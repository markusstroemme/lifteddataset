import os
import torch
from pathlib import Path
from datasets import Dataset
from transformers import (
    RobertaTokenizerFast,
    RobertaForMaskedLM,
    DataCollatorForLanguageModeling,
    Trainer,
    TrainingArguments,
)

# ==============================
# Paths
# ==============================
script_dir = os.path.dirname(os.path.abspath(__file__))
embeddings_dataset = os.path.join(script_dir, "..", "embeddings")
save_dir = os.path.join(script_dir, "..", "codebert-finetuned-0")

# ==============================
# Load tokenizer & model
# ==============================
model_name = "microsoft/codebert-base"
tokenizer = RobertaTokenizerFast.from_pretrained(model_name)
model = RobertaForMaskedLM.from_pretrained(model_name)

# ==============================
# Load dataset
# ==============================
files = list(Path(embeddings_dataset).rglob("*.ll"))
texts = []
for f in files:
    with open(f, "r", encoding="utf-8", errors="ignore") as infile:
        code = infile.read().strip()
        if code:
            texts.append({"text": code})

dataset = Dataset.from_list(texts)

# ==============================
# Chunking-aware tokenization
# ==============================
def chunk_and_tokenize(examples, max_length=512):
    input_ids_list, attn_mask_list = [], []
    for text in examples["text"]:
        tokens = tokenizer.encode(text, add_special_tokens=True)
        for i in range(0, len(tokens), max_length):
            chunk = tokens[i:i + max_length]
            # Pad to max_length
            padding_length = max_length - len(chunk)
            if padding_length > 0:
                chunk = chunk + [tokenizer.pad_token_id] * padding_length
            attn_mask = [1 if tid != tokenizer.pad_token_id else 0 for tid in chunk]
            input_ids_list.append(chunk)
            attn_mask_list.append(attn_mask)
    return {"input_ids": input_ids_list, "attention_mask": attn_mask_list}

tokenized_dataset = dataset.map(
    chunk_and_tokenize,
    batched=True,
    remove_columns=["text"]
)

# ==============================
# Data collator (MLM objective)
# ==============================
data_collator = DataCollatorForLanguageModeling(
    tokenizer=tokenizer,
    mlm=True,
    mlm_probability=0.15
)

# ==============================
# Training arguments
# ==============================
training_args = TrainingArguments(
    output_dir=os.path.join(script_dir, "..", "codebert-outputs"),
    overwrite_output_dir=True,
    eval_strategy="steps",          # fixed name in latest HF versions
    save_strategy="steps",
    save_total_limit=3,                   # keep more checkpoints for inspection
    learning_rate=1e-4,                   # lower LR for stable, gradual adaptation
    per_device_train_batch_size=8,        # tried 16, everything become unresponsive and vscode crashed.
    per_device_eval_batch_size=8,
    num_train_epochs=3,                   # deeper fine-tuning for LLVM specialization
    weight_decay=0.05,                    # slightly higher for regularization
    logging_dir=os.path.join(script_dir, "..", "logs"),
    logging_steps=100,
    eval_steps=500,                       # less frequent, since dataset is large
    save_steps=500,
    warmup_steps=1000,                    # ~5–10% of total steps for smooth start
    gradient_accumulation_steps=2,        # effective batch = 32
    fp16=torch.cuda.is_available(),       # mixed precision for efficiency
)



print("CUDA is available")
print("Using device:", torch.cuda.get_device_name(0))

# ==============================
# Trainer
# ==============================
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=tokenized_dataset,
    eval_dataset=tokenized_dataset.select(range(min(200, len(tokenized_dataset)))),
    tokenizer=tokenizer,
    data_collator=data_collator,
)

# ==============================
# Train & save
# ==============================
trainer.train()
model.save_pretrained(save_dir)
tokenizer.save_pretrained(save_dir)

print(f"Fine-tuned CodeBERT saved to: {save_dir}")
