import os
import subprocess
from elftools.elf.elffile import ELFFile
import xml.etree.ElementTree as ET
import time
from multiprocessing import Pool


# Treat all folders relative to the script folder.
script_dir = os.path.dirname(os.path.abspath(__file__))
cwes_folder = os.path.join(script_dir, "..", "testcases")
cwes_folder = os.path.normpath(cwes_folder)
# cwe_folder = os.path.join(cwes_folder, "CWE121_Stack_Based_Buffer_Overflow")
# cwe_folder = os.path.normpath(cwe_folder)
linux_root = os.path.dirname(cwes_folder)



# Start the Docker engine using the following command:
#  docker run --rm -it -v "D:\Skole\master\juliet dataset\C:/work" retdec-env
# When the instance is running, open docker desktop, go to Containers and find the name of the running container. 
container_name = "friendly_jackson"



# Execute a command inside the docker container
def execute_container(command):
    print(command)
    try:
        result = subprocess.run(
            ["docker", "exec", container_name, "bash", "-c", f"{command}"],
            check=True,
            capture_output=True,
            text=True
        )
        return result.stdout
    except subprocess.CalledProcessError as e:
        print("Command failed with exit code", e.returncode)
        print("stdout:\n", e.stdout)
        print("stderr:\n", e.stderr)
        return None
    except FileNotFoundError:
        print("Could not find docker. Are you sure docker is running?")
        return None



def process_folder(folder_path):
    entries = [os.path.join(folder_path, e) for e in os.listdir(folder_path)]
    files = [e for e in entries if os.path.isfile(e)]
    subfolders = [e for e in entries if os.path.isdir(e)]
    prev_base = None

    # Collect Makefiles
    makefiles = [f for f in files if os.path.basename(f) == "Makefile"]

    if not makefiles:
        # No Makefile here, recurse into subfolders
        for sub in sorted(subfolders):
            process_folder(sub)
    else:
        makefile_path = makefiles[0]  # first Makefile in this folder

        # If this folder has a Makefile, remove the potential debug symbol if present
        with open(makefile_path, "r+") as f:
            content = f.read()
            if "CFLAGS=-c -g" not in content:
                content = content.replace("CFLAGS=-c", "CFLAGS=-c -g")
                f.seek(0)
                f.write(content)
                f.truncate()
        
        # Build linux_path relative to directory above testcases
        linux_path = os.path.relpath(folder_path, linux_root)
        linux_path = "./" + linux_path.replace("\\", "/")  # ensure Linux-style slashes
        print(f"folder_path: {folder_path}")
        print(f"linux_path: {linux_path}")

        
        parts = linux_path.split("/")
        # "./testcases/CWE23_Relative_Path_Traversal/s01" => "CWE23"
        cwe = parts[2].split("_")[0]
        if parts[-1].startswith("s"):
            # "./testcases/CWE23_Relative_Path_Traversal/s01" => "CWE21_s01"
            elf_binary = f"{cwe}_{parts[-1]}"
        else:
            # "./testcases/CWE23_Relative_Path_Traversal" => "CWE21"
            elf_binary = cwe
        
        # Full path to the elf binary
        elf_path = os.path.join(folder_path, elf_binary)
        # print(f"elf_path: {elf_path}")

        # # 1. Compile all files in a folder
        print("Running make clean && make...")
        out = execute_container(f"cd {linux_path} && make clean && make")
        print(out)
        time.sleep(5)

        # # 2. Lift all compiled files
        print("Lifting to LLVM...")
        out = execute_container(f"cd {linux_path} && retdec-decompiler {elf_binary}")
        print(out)
        time.sleep(5)


excluded_folders = [
    "CWE121_Stack_Based_Buffer_Overflow",  # 4968 samples
    "CWE122_Heap_Based_Buffer_Overflow",  # 5922 samples
    "CWE190_Integer_Overflow",            # 2592 samples
    "CWE416_Use_After_Free",              # 459 samples
    "CWE476_NULL_Pointer_Dereference"    # 348 samples
]

included_folders = [ 
    "CWE416_Use_After_Free",              # 459 samples
    "CWE476_NULL_Pointer_Dereference"    # 348 samples
]

for folder in os.listdir(cwes_folder):
# for folder in included_folders:

    # if folder not in excluded_folders:
    #     continue
    # print(folder)
    # print(f"Hold on. Folder is {folder}")
    if folder not in included_folders:
        # print(F"Skips {folder}")
        continue

    target_folder = os.path.join(cwes_folder, folder)
    print(f"target_folder: {target_folder}")

    if os.path.isdir(target_folder):
        print(f"\n{folder}:")
        process_folder(target_folder)



# Some CWE folders include no subfolders.
# If this is the case, the you may have noticed that the scripts fail
# Not to worry! Here's what to do:
# 1. Start with a clean version of the folder you want
# 2. Run the script on the specified CWE folder, it will find the Makefile and work successfully compile and lift
# 3. Create the s01 folder inside the CWE folder you want and copy all files into it.
# 4. Rename the following files to:
# CWEXXX -> CWEXXX_s01
# CWEXXX.bc -> CWEXXX_s01.bc
# CWEXXX.ll -> CWEXXX_s01.ll
# 5. Run extract.py as usual