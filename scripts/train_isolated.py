import os
import re
import torch
import torch.nn as nn
import torch.optim as optim
from tqdm import tqdm
from torch.utils.data import Dataset, DataLoader
from sklearn.metrics import f1_score, precision_score, recall_score, accuracy_score
from sklearn.model_selection import StratifiedGroupKFold, StratifiedKFold
from collections import defaultdict
from transformers import RobertaTokenizer, RobertaModel


# ==============================
# Device setup
# ==============================
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"Using device: {device}")

# Treat all folders relative to the script folder
script_dir = os.path.dirname(os.path.abspath(__file__))
cwes_folder = os.path.join(script_dir, "..", "testcases")
target_cwe = os.path.join(cwes_folder, "CWE121_Stack_Based_Buffer_Overflow", "classification2")
# results_dir = os.path.join(script_dir, "results")
results_dir = os.path.join(script_dir, "baseline", "CWE121", "trained unfiltered")
os.makedirs(results_dir, exist_ok=True)

# ==============================
# Load tokenizer & model
# ==============================
# Use existing fine-tuned
finetuned_model_dir = os.path.join(script_dir, "..", "codebert-finetuned-1")
tokenizer = RobertaTokenizer.from_pretrained(finetuned_model_dir)
codebert = RobertaModel.from_pretrained(finetuned_model_dir).to(device)
codebert.eval()
# Use "blank" codebert
# tokenizer = RobertaTokenizer.from_pretrained("microsoft/codebert-base")
# codebert = RobertaModel.from_pretrained("microsoft/codebert-base").to(device)
# codebert.eval()

# ==============================
# Data loader for LLVM files
# ==============================
def load_samples(base_dir):
    data = []
    for label_name, label_id in [("good", 0), ("bad", 1)]:
        label_folder = os.path.join(base_dir, label_name)
        if not os.path.isdir(label_folder):
            continue
        for subfolder in os.listdir(label_folder):
            sub_path = os.path.join(label_folder, subfolder)
            if not os.path.isdir(sub_path):
                continue
            for fname in os.listdir(sub_path):
                if fname.endswith(".ll"):
                    path = os.path.join(sub_path, fname)
                    with open(path, "r", encoding="utf-8", errors="ignore") as f:
                        code = f.read()
                    data.append({
                        "code": code,
                        "label": label_id,
                        "group": f"{label_name}/{subfolder}"
                    })
    return data

# ==============================
# Tokenize with chunking
# ==============================
def tokenize_with_chunks(code, max_length=512):
    tokens = tokenizer.encode(code, add_special_tokens=True)
    chunks = []
    for i in range(0, len(tokens), max_length):
        chunk_ids = tokens[i:i + max_length]
        padding_length = max_length - len(chunk_ids)
        if padding_length > 0:
            chunk_ids = chunk_ids + [tokenizer.pad_token_id] * padding_length
        attn_mask = [1 if id != tokenizer.pad_token_id else 0 for id in chunk_ids]
        chunks.append({"input_ids": chunk_ids, "attention_mask": attn_mask})
    return chunks

# ==============================
# Get embeddings
# ==============================
def get_file_embeddings(code, strategy="cls"):
    chunks = tokenize_with_chunks(code)
    if not chunks:
        return torch.zeros(1, 768, device=device)

    input_ids = torch.tensor([c["input_ids"] for c in chunks], device=device)
    attn_masks = torch.tensor([c["attention_mask"] for c in chunks], device=device)

    with torch.no_grad():
        outputs = codebert(input_ids, attention_mask=attn_masks)
        hidden_states = outputs.last_hidden_state

    if strategy == "cls":
        chunk_embeds = hidden_states[:, 0, :]
    elif strategy == "mean":
        mask_expanded = attn_masks.unsqueeze(-1).expand(hidden_states.size())
        sum_embeddings = torch.sum(hidden_states * mask_expanded, 1)
        sum_mask = mask_expanded.sum(1)
        chunk_embeds = sum_embeddings / sum_mask
    else:
        raise ValueError("Unknown strategy. Use 'cls' or 'mean'.")

    return chunk_embeds

# ==============================
# Precompute and cache embeddings
# ==============================
def precompute_and_cache(samples, cache_dir, strategy="cls"):
    os.makedirs(cache_dir, exist_ok=True)
    cached_samples = []
    for i, s in enumerate(tqdm(samples, desc="Precomputing embeddings")):
        cache_path = os.path.join(cache_dir, f"sample_{i}.pt")
        # if os.path.exists(cache_path):
        #     embeddings = torch.load(cache_path, map_location=device)
        # else:
        embeddings = get_file_embeddings(s["code"], strategy=strategy).cpu()
        torch.save(embeddings, cache_path)
        cached_samples.append({
            "embedding_path": cache_path,
            "label": s["label"],
            "group": s["group"]
        })
    return cached_samples

# ==============================
# Dataset
# ==============================
class LLVMCodeDataset(Dataset):
    def __init__(self, samples):
        self.samples = samples

    def __len__(self):
        return len(self.samples)

    def __getitem__(self, idx):
        entry = self.samples[idx]
        embeddings = torch.load(entry["embedding_path"], map_location=device)
        num_chunks = embeddings.size(0)
        return embeddings, torch.tensor(entry["label"], dtype=torch.long), entry["group"], num_chunks

# ==============================
# Collate function
# ==============================
def collate_fn(batch):
    seqs, labels, groups, num_chunks = zip(*batch)
    lengths = [s.size(0) for s in seqs]
    padded = nn.utils.rnn.pad_sequence(seqs, batch_first=True)
    return padded, torch.tensor(labels, dtype=torch.long, device=device), groups, lengths, num_chunks

# ==============================
# LSTM Classifier
# ==============================
class LSTMClassifier(nn.Module):
    def __init__(self, input_dim=768, hidden_dim=342, num_classes=2):
        super().__init__()
        self.lstm = nn.LSTM(input_dim, hidden_dim, batch_first=True, bidirectional=True)
        self.fc = nn.Linear(hidden_dim * 2, num_classes)

    def forward(self, x, lengths):
        packed = nn.utils.rnn.pack_padded_sequence(x, lengths, batch_first=True, enforce_sorted=False)
        _, (h_n, _) = self.lstm(packed)
        h_cat = torch.cat((h_n[-2], h_n[-1]), dim=1)
        logits = self.fc(h_cat)
        return logits
    

# ==============================
# Evaluation
# ==============================
def evaluate_fold(model, dataset, batch_size=4):
    loader = DataLoader(dataset, batch_size=batch_size, collate_fn=collate_fn)
    preds, trues, groups, chunks = [], [], [], []
    model.eval()
    with torch.no_grad():
        for embeds, labels, batch_groups, lengths, num_chunks in loader:
            embeds = embeds.to(device)
            logits = model(embeds, lengths)
            yhat = torch.argmax(logits, dim=1).cpu().tolist()
            preds.extend(yhat)
            trues.extend(labels.cpu().tolist())
            groups.extend(batch_groups)
            chunks.extend(num_chunks)
    return preds, trues, groups, chunks



def parse_variant(folder_name):
    # e.g. "good/72" -> ("good", 72)
    match = re.match(r"(good|bad)/(\d+)$", folder_name)
    if match:
        label, num = match.groups()
        return label, int(num)
    return folder_name, None


def report_results(all_labels, all_preds, all_groups, all_chunks, title, log_path=None):
    lines = []
    overall_f1 = f1_score(all_labels, all_preds, average="macro")
    overall_precision = precision_score(all_labels, all_preds, average="macro", zero_division=0)
    overall_recall = recall_score(all_labels, all_preds, average="macro", zero_division=0)
    overall_accuracy = accuracy_score(all_labels, all_preds)

    lines.append(f"\n{title}")
    lines.append(f"Overall Results:")
    lines.append(f"Macro-F1: {overall_f1:.4f}")
    lines.append(f"Macro-Precision: {overall_precision:.4f}")
    lines.append(f"Macro-Recall: {overall_recall:.4f}")
    lines.append(f"Accuracy: {overall_accuracy:.4f}\n")

    variant_data = defaultdict(lambda: {"y_true": [], "y_pred": [], "chunks": []})
    for y, yhat, g, c in zip(all_labels, all_preds, all_groups, all_chunks):
        label, num = parse_variant(g)
        if num is not None:
            variant_data[num]["y_true"].append(y)
            variant_data[num]["y_pred"].append(yhat)
            variant_data[num]["chunks"].append(c)

    lines.append("Per-Variant Results:") 
    lines.append(f"{'Variant':<8} {'F1':<8} {'Precision':<12} {'Recall':<10} {'Accuracy':<10} {'Avg Chunks'}")
    for num in sorted(variant_data.keys()):
        vals = variant_data[num]
        y_true, y_pred = vals["y_true"], vals["y_pred"]
        f1 = f1_score(y_true, y_pred, average="binary", zero_division=0)
        precision = precision_score(y_true, y_pred, average="binary", zero_division=0)
        recall = recall_score(y_true, y_pred, average="binary", zero_division=0)
        accuracy = accuracy_score(y_true, y_pred)
        avg_chunks = sum(vals["chunks"]) / len(vals["chunks"])
        lines.append(f"{num:<8} {f1:<8.4f} {precision:<12.4f} {recall:<10.4f} {accuracy:<10.4f} {avg_chunks:.2f}")

    output_text = "\n".join(lines)
    print(output_text)

    if log_path:
        with open(log_path, "w", encoding="utf-8") as f:
            f.write(output_text + "\n")

# ==============================
# Variant-level CV (group split)
# ==============================
def run_variant_cv(dataset, k=5, batch_size=4, epochs=10):
    groups = [d["group"] for d in dataset]
    labels = [d["label"] for d in dataset]
    cv = StratifiedGroupKFold(n_splits=k, shuffle=True, random_state=42)

    # Store per-epoch results across all folds
    epoch_results = {e: {"labels": [], "preds": [], "groups": [], "chunks": []}
                     for e in range(1, epochs + 1)}

    fold_idx = 1
    for train_idx, test_idx in cv.split(dataset, labels, groups):
        print(f"\n===== Variant Fold {fold_idx}/{k} =====")

        train_data = [dataset[i] for i in train_idx]
        test_data = [dataset[i] for i in test_idx]

        train_dataset = LLVMCodeDataset(train_data)
        test_dataset = LLVMCodeDataset(test_data)

        train_loader = DataLoader(
            train_dataset,
            batch_size=batch_size,
            shuffle=True,
            collate_fn=collate_fn
        )

        model = LSTMClassifier().to(device)
        criterion = nn.CrossEntropyLoss()
        # optimizer = optim.Adam(model.parameters(), lr=1e-3)
        optimizer = optim.Adam(model.parameters(), lr=1e-3, weight_decay=1e-4)
        # optimizer = optim.Adam(model.parameters(), lr=5e-4)
        # optimizer = optim.Adam(model.parameters(), lr=5e-4, weight_decay=1e-4)

        # optimizer = optim.SGD(model.parameters(), lr=0.05, momentum=0.9)
        # optimizer = optim.SGD(model.parameters(), lr=0.05, momentum=0.9, weight_decay=1e-4)
        # optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9)
        # optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9, weight_decay=1e-4)



        # Train and evaluate per epoch
        for epoch in range(1, epochs + 1):
            model.train()
            total_loss = 0.0
            progress = tqdm(train_loader, desc=f"Fold {fold_idx} - Epoch {epoch}/{epochs}", leave=False)
            for embeds, labels_batch, groups_batch, lengths, _ in progress:
                embeds = embeds.to(device)
                labels_batch = labels_batch.to(device)
                optimizer.zero_grad()
                logits = model(embeds, lengths)
                loss = criterion(logits, labels_batch)
                loss.backward()
                optimizer.step()
                total_loss += loss.item()
                progress.set_postfix(loss=loss.item())
            print(f"Fold {fold_idx} - Epoch {epoch}, Avg Loss: {total_loss/len(train_loader):.4f}")

            # Evaluate current epoch on this fold
            preds, trues, fold_groups, fold_chunks = evaluate_fold(model, test_dataset, batch_size)

            # Collect fold results for this epoch
            epoch_results[epoch]["labels"].extend(trues)
            epoch_results[epoch]["preds"].extend(preds)
            epoch_results[epoch]["groups"].extend(fold_groups)
            epoch_results[epoch]["chunks"].extend(fold_chunks)

        fold_idx += 1

    # After all folds, average results per epoch
    for epoch in range(1, epochs + 1):
        log_file = os.path.join(results_dir, f"Variant-level_epoch_{epoch}.txt")
        report_results(epoch_results[epoch]["labels"],
                       epoch_results[epoch]["preds"],
                       epoch_results[epoch]["groups"],
                       epoch_results[epoch]["chunks"],
                       f"Variant-level average across {k} folds - Epoch {epoch}",
                       log_path=log_file)



# ==============================
# Sample-level CV
# ==============================
def run_sample_cv(dataset, k=5, batch_size=4, epochs=10):
    labels = [d["label"] for d in dataset]
    cv = StratifiedKFold(n_splits=k, shuffle=True, random_state=42)

    # For storing per-epoch results across folds
    epoch_results = {e: {"labels": [], "preds": [], "groups": [], "chunks": []}
                     for e in range(1, epochs + 1)}

    fold_idx = 1
    for train_idx, test_idx in cv.split(dataset, labels):
        print(f"\n===== Sample Fold {fold_idx}/{k} =====")

        train_data = [dataset[i] for i in train_idx]
        test_data = [dataset[i] for i in test_idx]

        train_dataset = LLVMCodeDataset(train_data)
        test_dataset = LLVMCodeDataset(test_data)

        train_loader = DataLoader(train_dataset, batch_size=batch_size,
                                  shuffle=True, collate_fn=collate_fn)

        model = LSTMClassifier().to(device)
        criterion = nn.CrossEntropyLoss()
        # optimizer = optim.Adam(model.parameters(), lr=1e-3)
        optimizer = optim.Adam(model.parameters(), lr=1e-3, weight_decay=1e-4)
        # optimizer = optim.Adam(model.parameters(), lr=5e-4)
        # optimizer = optim.Adam(model.parameters(), lr=5e-4, weight_decay=1e-4)

        # optimizer = optim.SGD(model.parameters(), lr=0.05, momentum=0.9)
        # optimizer = optim.SGD(model.parameters(), lr=0.05, momentum=0.9, weight_decay=1e-4)
        # optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9)
        # optimizer = optim.SGD(model.parameters(), lr=0.01, momentum=0.9, weight_decay=1e-4)

        # Train each epoch and collect fold results
        for epoch in range(1, epochs + 1):
            model.train()
            total_loss = 0.0
            progress = tqdm(train_loader,
                            desc=f"Fold {fold_idx} - Epoch {epoch}/{epochs}", leave=False)
            for embeds, labels_batch, groups_batch, lengths, _ in progress:
                embeds = embeds.to(device)
                labels_batch = labels_batch.to(device)
                optimizer.zero_grad()
                logits = model(embeds, lengths)
                loss = criterion(logits, labels_batch)
                loss.backward()
                optimizer.step()
                total_loss += loss.item()
                progress.set_postfix(loss=loss.item())
            print(f"Fold {fold_idx} - Epoch {epoch}, Avg Loss: {total_loss/len(train_loader):.4f}")

            # Evaluate at this epoch
            preds, trues, fold_groups, fold_chunks = evaluate_fold(model, test_dataset, batch_size)

            # Store fold results for averaging later
            epoch_results[epoch]["labels"].extend(trues)
            epoch_results[epoch]["preds"].extend(preds)
            epoch_results[epoch]["groups"].extend(fold_groups)
            epoch_results[epoch]["chunks"].extend(fold_chunks)

        fold_idx += 1

    # After all folds, compute averages per epoch
    for epoch in range(1, epochs + 1):
        log_file = os.path.join(results_dir, f"Sample-level_epoch_{epoch}.txt")
        report_results(epoch_results[epoch]["labels"],
                       epoch_results[epoch]["preds"],
                       epoch_results[epoch]["groups"],
                       epoch_results[epoch]["chunks"],
                       f"Sample-level average across {k} folds - Epoch {epoch}",
                       log_path=log_file)




# ==============================
# Main
# ==============================
if __name__ == "__main__":
    DATA_DIR = target_cwe
    raw_samples = load_samples(DATA_DIR)
    print(f"Total raw samples: {len(raw_samples)}")

    cache_dir = os.path.join(script_dir, "cached_embeddings")
    dataset = precompute_and_cache(raw_samples, cache_dir, strategy="cls")
    print(f"Cached dataset size: {len(dataset)}")

    # Run both CV modes
    run_variant_cv(dataset, k=5, batch_size=8, epochs=50)
    run_sample_cv(dataset, k=5, batch_size=8, epochs=50)

