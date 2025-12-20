import matplotlib.pyplot as plt
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
cwe_folder = os.path.join(script_dir, "baseline")
cwe_folder = os.path.join(script_dir, "results")

epochs = np.arange(1, 16)

Macro_F1 = []
Macro_Precision = []
Macro_Recall = []
Accuracy = []

Variant_F1 = []
Variant_Precision = []
Variant_Recall = []
Variant_Accuracy = []

for e in epochs:
    cwe_files = [
        os.path.join(cwe_folder, f"Multi-Variant_CWE121_Stack_Based_Buffer_Overflow_epoch_{e}.txt"),
        os.path.join(cwe_folder, f"Multi-Variant_CWE122_Heap_Based_Buffer_Overflow_epoch_{e}.txt"),
        os.path.join(cwe_folder, f"Multi-Variant_CWE190_Integer_Overflow_epoch_{e}.txt"),
        os.path.join(cwe_folder, f"Multi-Variant_CWE416_Use_After_Free_epoch_{e}.txt"),
        os.path.join(cwe_folder, f"Multi-Variant_CWE476_NULL_Pointer_Dereference_epoch_{e}.txt"),
    ]

    epoch_macro_f1 = []
    epoch_macro_prec = []
    epoch_macro_rec = []
    epoch_acc = []

    for file in cwe_files:
        with open(file, "r") as f:
            text = f.read()
            for line in text.splitlines():
                if line.startswith("Macro-F1:"):
                    epoch_macro_f1.append(float(line.split(":")[1].strip()))
                elif line.startswith("Macro-Precision:"):
                    epoch_macro_prec.append(float(line.split(":")[1].strip()))
                elif line.startswith("Macro-Recall:"):
                    epoch_macro_rec.append(float(line.split(":")[1].strip()))
                elif line.startswith("Accuracy:"):
                    epoch_acc.append(float(line.split(":")[1].strip()))

    Macro_F1.append(np.mean(epoch_macro_f1))
    Macro_Precision.append(np.mean(epoch_macro_prec))
    Macro_Recall.append(np.mean(epoch_macro_rec))
    Accuracy.append(np.mean(epoch_acc))

    Variant_F1.append(np.mean(epoch_macro_f1))
    Variant_Precision.append(np.mean(epoch_macro_prec))
    Variant_Recall.append(np.mean(epoch_macro_rec))
    Variant_Accuracy.append(np.mean(epoch_acc))


plt.plot(epochs, Macro_Precision, color='orange')
plt.plot(epochs, Macro_Recall, color='blue')
plt.plot(epochs, Accuracy, color='red')
plt.plot(epochs, Macro_F1, color='green')

plt.plot(epochs, Variant_Precision, color='orange', linestyle='--')
plt.plot(epochs, Variant_Recall, color='blue', linestyle='--')
plt.plot(epochs, Variant_Accuracy, color='red', linestyle='--')
plt.plot(epochs, Variant_F1, color='green', linestyle='--')

plt.xticks(epochs)
plt.minorticks_on()

plt.xlabel("Epoch")
plt.ylabel("Value")
plt.legend(loc='center left', bbox_to_anchor=(1, 0.5), frameon=False)

plt.grid(True, linewidth=0.3)
plt.grid(which='minor', linewidth=0.2)

plt.show()
