import matplotlib.pyplot as plt
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
# cwe_folder = os.path.join(script_dir, "results")
cwe_folder = os.path.join(script_dir, "baseline", "1. plain codebert")
# cwe_folder = os.path.join(script_dir, "baseline", "Multi", "Sample-level single class")

epochs = np.arange(1, 100)

Macro_F1 = []
Macro_Precision = []
Macro_Recall = []
Accuracy = []

Variant_F1 = []
Variant_Precision = []
Variant_Recall = []
Variant_Accuracy = []

for e in epochs:
    # sample_file = os.path.join(cwe_folder, f"Sample-level_single-class_epoch_{e}.txt")
    sample_file = os.path.join(cwe_folder, f"Sample-level_epoch_{e}.txt")
    # variant_file = os.path.join(cwe_folder, f"Multi-Variant_CWE476_NULL_Pointer_Dereference_epoch_{e}.txt")
    variant_file = os.path.join(cwe_folder, f"Variant-level_epoch_{e}.txt")

    with open(sample_file, "r") as s:
        text = s.read()
        for line in text.splitlines():
            if line.startswith("Macro-F1:"):
                Macro_F1.append(float(line.split(":")[1].strip()))
            elif line.startswith("Macro-Precision:"):
                Macro_Precision.append(float(line.split(":")[1].strip()))
            elif line.startswith("Macro-Recall:"):
                Macro_Recall.append(float(line.split(":")[1].strip()))
            elif line.startswith("Accuracy:"):
                Accuracy.append(float(line.split(":")[1].strip()))

    with open(variant_file, "r") as v:
        text = v.read()
        for line in text.splitlines():
            if line.startswith("Macro-F1:"):
                Variant_F1.append(float(line.split(":")[1].strip()))
            elif line.startswith("Macro-Precision:"):
                Variant_Precision.append(float(line.split(":")[1].strip()))
            elif line.startswith("Macro-Recall:"):
                Variant_Recall.append(float(line.split(":")[1].strip()))
            elif line.startswith("Accuracy:"):
                Variant_Accuracy.append(float(line.split(":")[1].strip()))


# Identify first epoch where Macro_F1 > 0.7
# first_over_07 = next((i for i, v in enumerate(Macro_F1) if v > 0.7), None)
# if first_over_07 is not None:
#     print(f"Macro-F1 first above 0.7 at epoch {first_over_07 + 1}")
# else:
#     print("Macro-F1 never exceeded 0.7")

    
# Identify best epochs
best_sample = np.argmax(Macro_F1)
best_variant = np.argmax(Variant_F1)

print(f"Sample-level - Epoch {best_sample + 1}:")
print(f"Macro-F1: {Macro_F1[best_sample]:.4f}")
print(f"Macro-Precision: {Macro_Precision[best_sample]:.4f}")
print(f"Macro-Recall: {Macro_Recall[best_sample]:.4f}")
print(f"Accuracy: {Accuracy[best_sample]:.4f}")

print(f"Variant-level - Epoch {best_variant + 1}:")
print(f"Macro-F1: {Variant_F1[best_variant]:.4f}")
print(f"Macro-Precision: {Variant_Precision[best_variant]:.4f}")
print(f"Macro-Recall: {Variant_Recall[best_variant]:.4f}")
print(f"Accuracy: {Variant_Accuracy[best_variant]:.4f}")

plt.plot(epochs, Macro_Precision, color='orange')
plt.plot(epochs, Macro_Recall, color='blue')
plt.plot(epochs, Accuracy, color='red')
plt.plot(epochs, Macro_F1, color='green')

plt.plot(epochs, Variant_Precision, color='orange', linestyle='--')
plt.plot(epochs, Variant_Recall, color='blue', linestyle='--')
plt.plot(epochs, Variant_Accuracy, color='red', linestyle='--')
plt.plot(epochs, Variant_F1, color='green', linestyle='--')

# plt.xticks(epochs)
plt.xticks(np.arange(1, 101, 2))
plt.minorticks_on()

plt.xlabel("Epoch")
plt.ylabel("Value")
plt.legend(loc='center left', bbox_to_anchor=(1, 0.5), frameon=False)

plt.grid(True, linewidth=0.3)
plt.grid(which='minor', linewidth=0.2)

plt.show()
