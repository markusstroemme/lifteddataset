import os
import subprocess
from elftools.elf.elffile import ELFFile
import xml.etree.ElementTree as ET
import re
import line2addr
import time
from multiprocessing import Pool


# Treat all folders relative to the script folder.
script_dir = os.path.dirname(os.path.abspath(__file__))
cwes_folder = os.path.join(script_dir, "..", "testcases")

# Replace with the one you want to train on
cwe_folder = os.path.join(cwes_folder, "CWE121_Stack_Based_Buffer_Overflow")
# cwe_folder = os.path.join(cwes_folder, "CWE190_Integer_Overflow")
cwe_folder = os.path.normpath(cwe_folder)
manifest = os.path.join(script_dir, "..", "manifest.xml")
linux_root = os.path.dirname(cwes_folder)


maybe_optimized = []
maybe_optimized2 = []

tree = ET.parse(manifest)

# Create new folders for the processed dataset
classification_dir = os.path.join(cwe_folder, "classification")
good_dir = os.path.join(classification_dir, "good")
bad_dir = os.path.join(classification_dir, "bad")
os.makedirs(good_dir, exist_ok=True)
os.makedirs(bad_dir, exist_ok=True)

for i in range(1, 85):
    os.makedirs(os.path.join(good_dir, str(i)), exist_ok=True)
    os.makedirs(os.path.join(bad_dir, str(i)), exist_ok=True)
    

def extract_function(outname, fname, classification, variant_nr, ELF, workdir, version=1):
    bitcode = ELF + ".bc"
    bc_out = outname + f"{version}.bc"
    ll_out = outname + f"{version}.ll"
    
    if classification == "bad":
        out_dir = bad_dir
    else: 
        out_dir = good_dir
    

    # Extract bitcode function
    # print(f"llvm-extract -func={fname} --recursive {bitcode} -o {bc_out}")
    try:
        llvm_extract = subprocess.run(
            [
                "llvm-extract", f"-func={fname}", "--recursive", bitcode, "-o", bc_out
            ],
            check=True,
            cwd=workdir,
            capture_output=True,
            text=True
        )
        # print(llvm_extract.stdout)

    except subprocess.CalledProcessError as e:
        print("Command failed!")
        print("Exit code:", e.returncode)
        print("Command:", e.cmd)
        print("Stdout:", e.stdout)
        print("Stderr:", e.stderr)

    # Disassemble to .ll
    # print(f"llvm-dis {bc_out} -o {os.path.join(out_dir, variant_nr, ll_out)}")
    full_out = os.path.join(out_dir, variant_nr, ll_out)
    try:
        llvm_dis = subprocess.run(
            [
                "llvm-dis", bc_out, "-o", full_out
            ],
            check=True,
            cwd=workdir,
            capture_output=True,
            text=True
        )
        # print(llvm_dis.stdout)

    except subprocess.CalledProcessError as e:
        print("Command failed!")
        print("Exit code:", e.returncode)
        print("Command:", e.cmd)
        print("Stdout:", e.stdout)
        print("Stderr:", e.stderr)


    # return bc_out, ll_out, result.stdout
    return full_out



def anonymize(target_ll):
    # Separate regex patterns
    patterns = [
        # CWE-style names
        re.compile(r'(@[\w.]*CWE\d+[\w.]*)(?=\()'),
        # Functions containing good...
        re.compile(r'(@[\w.]*good[\w.]*)(?=\()'),
        # Functions containing bad...
        re.compile(r'(@[\w.]*bad[\w.]*)(?=\()'),
    ]

    mapping = {}
    counter = 0

    with open(target_ll, "r") as infile:
        text = infile.read()

    def replacer(match):
        nonlocal counter
        name = match.group(1)
        if name not in mapping:
            mapping[name] = f"@anon{counter}"
            counter += 1
        return mapping[name]

    # Apply each pattern in sequence
    for pattern in patterns:
        text = pattern.sub(replacer, text)

    with open(target_ll, "w") as outfile:
        outfile.write(text)

    return



def find_function(tfunction, bitcode, classification):
    # Fetch the number at the end of the string, remove leadign 0
    variant_nr = tfunction.rsplit("_", 1)[-1]
    variant_nr = str(int(variant_nr))
    print(f"bitcode: {bitcode}")

    with open(bitcode, "rb") as f:
        try:
            elf = ELFFile(f)
        except Exception:
 
            # Not a valid ELF (probably a .c or .cpp file which didnt compile)
            print(f"[skip] {bitcode} is not an ELF/bitcode file")
            return None

        symtab = elf.get_section_by_name(".symtab")
        if not symtab:
            raise RuntimeError(f"No symbol table found in {bitcode}")
        
        matches = []
        # print("Still: " + tfunction)
        for symbol in symtab.iter_symbols():
            if symbol['st_info']['type'] != 'STT_FUNC':
                continue  # skip non-functions
            name = symbol.name
            if tfunction in name and classification in name:
                matches.append(name)
                # print("Fant: " + name)
        
        if not matches:
            return None
        
        # CPP is a complex language. 
        # Sometimes file symbols get included in the list of function symbols.
        # And sometimes typeinfo symbols or vtable symbols get included if the function is mangled.
        # What these are exactly is left as an exercise to the reader.
        # Anyways, these are not of interest  
        filtered = set()
        for m in matches:
            if m.endswith((".c", ".cpp")):
                continue
            if m.startswith(("_ZTI", "_ZTS", "_ZTV")):
                continue
            if m.endswith("Data"):
                continue            
            if m.endswith("Global"):
                continue
            # skip compiler-generated constructors/destructors
            if re.search(r'C[12][A-Za-z0-9_]*E|D[12][A-Za-z0-9_]*E', m):
                continue
            # Skip secondary helper functions or non-top level functions
            if re.search(r"(Sink|Source|action|helper|Data)", m):
                continue
            if re.search(r"(good(G2B|B2G|Sink|Source)|bad(G2B|B2G|Sink|Source))", m):
                continue 
            # if re.search(r"(good(Sink|Source)|bad(G2B|B2G|Sink|Source))", m):
            #     continue

            filtered.add(m)


        # If multiple good flows, return all of them.
        candidates = {f for f in filtered if any(k in f for k in ["goodG2B", "goodB2G"])}

        if candidates:
            result = candidates
        else:
            # But if this is not the case, return the one with the shortest name
            result = {min(filtered, key=len)}
        
        # print(f"Went with: {result}")
    # Functions that may not have been filtered out should be random functions longer than the top-level function
    return (result, classification, variant_nr)


def find_good(tfunction, ELF):
    lifted_bitcode = ELF + ".ll"

    # ensure we always work with a string
    if isinstance(tfunction, set):
        tfunction = next(iter(tfunction))

    pattern_define = re.compile(rf"^define .* @{re.escape(tfunction)}\(")
    pattern_call = re.compile(r"call .* @([^(\s]+)")

    collected = []
    inside_target = False

    with open(lifted_bitcode, "r") as f:
        for line in f:
            if not inside_target:
                if pattern_define.search(line):
                    inside_target = True
                continue

            if line.strip().startswith("}"):
                break

            match_call = pattern_call.search(line)
            if match_call:
                collected.append(match_call.group(1))

    return collected





# Enter with a target file. Return top level bad/good function, the name of the bitcode file, and which variant it is.

def get_vulnerability(source_name):
    # filepath can be full path like "...65b.c" or base id like "..._65"
    # Returns (found: bool, vuln_file: str|None, line: int|None)
    tree = ET.parse(manifest)
    root = tree.getroot()

    # # First try exact match (old behavior)
    # for file_elem in root.iter("file"):
    #     if file_elem.attrib.get("path") == source_name:
    #         flaw = file_elem.find("flaw")
    #         if flaw is not None:
    #             return True, file_elem.attrib.get("path"), int(flaw.attrib.get("line"))
    #         return False, None, None

    # If exact match failed, treat input as base id and search for a file that contains it
    for file_elem in root.iter("file"):
        file_path = file_elem.attrib.get("path", "")
        if source_name in file_path:
            flaw = file_elem.find("flaw")
            if flaw is not None:
                return True, file_path, int(flaw.attrib.get("line"))

    # Not found
    return False, None, None


def mark_vulnerability(source_c, target_ll, line_number, elf_path):

    print(f"source_c: {source_c}")

    print(f"line_number: {line_number}")

    print(f"target_ll: {target_ll}")
    
    print(f"binary: {elf_path}")

    debug_line = line2addr.line2addr(source_c, line_number, target_ll, elf_path)
    # debug_line becomes "!20"
    if debug_line == False:
        maybe_optimized.append([source_c, line_number])

        # If you want to create a dataset without filtering based on if the script could identify the vulnerability,
        # comment out the following two lines:
        # os.remove(target_ll)
        # return True
    
    # The following can be commented out to add debug symbols to track the vulnerability.
    # It ended up not being used in the thesis, but can be useful for certain preprocessing
    # Comment out the return and uncomment the next section
    return False

# with open(target_ll, "r") as file:
#     ir_text = file.read()
#     # Change:
#     # %1 = bitcast ptr %stack_var_-72 to ptr, !insn.addr !20
#     # %2 = call ptr @strcat(ptr nonnull %1, ptr %data), !insn.addr !20
#     # To:
#     # %1 = bitcast ptr %stack_var_-72 to ptr, !vulnerability !20
#     # %2 = call ptr @strcat(ptr nonnull %1, ptr %data), !vulnerability !20

#     pattern = r"!insn\.addr\s*{}".format(re.escape(debug_line))
    
#     replaced = re.sub(pattern, f"!vulnerability {debug_line}", ir_text)
#     # Overwrite the LLVM IR file with the modified content
#     with open(target_ll, "w") as file:
#         file.write(replaced)
#     # Strip debug 
#     # stripped_out = target_ll + ".stripped.bc"
#     # subprocess.run(
#     #     ["opt", "-strip-debug", target_ll, "-o", stripped_out],
#     #     check=True
#     # )
#     return
    

def clean(target_ll):
    with open(target_ll, "r") as file:
        ir_text = file.read()

    # Remove everything before the first global or function definition (@ or define/declare)
    m = re.search(r'^[ \t]*(?:@|define|declare)', ir_text, flags=re.MULTILINE)
    if m:
        ir_text = ir_text[m.start():]

    # Remove instruction metadata attachments like ", !insn.addr !13"
    cleaned = re.sub(r', *![A-Za-z0-9_.]+ *![0-9]+', '', ir_text)

    # Remove metadata node definitions (e.g., "!7 = !{i64 39329}")
    cleaned = re.sub(r'^![0-9]+ = !\{.*\}\n?', '', cleaned, flags=re.MULTILINE)

    with open(target_ll, "w") as file:
        file.write(cleaned)

    return



prev_base = None
prev_base_o = None
samples_count = 0
object_count = 0


def process_folder(subfolder):

    entries = [os.path.join(subfolder, e) for e in os.listdir(subfolder)]
    files = [e for e in entries if os.path.isfile(e)]
    prev_base = None

    # Collect Makefiles
    makefiles = [f for f in files if os.path.basename(f) == "Makefile"]

    # Only folders who have been able to compiled to ELF contains a Makefile
    if makefiles:
        
        # Build linux_path relative to directory above testcases    
        linux_path = os.path.relpath(subfolder, linux_root)
        linux_path = "./" + linux_path.replace("\\", "/")  # ensure Linux-style slashes

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
        elf_path = os.path.join(subfolder, elf_binary)


        for fname in files:
            fname = os.path.basename(fname)   # "CWE121_...cpp"
            
            if "CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_84" not in fname and "CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_01" not in fname:
                continue

            
            if fname.endswith((".c", ".cpp")):
                file_only, _ = os.path.splitext(fname)
                # Regex to only keep the string matching:
                # CWE<number>_somthing something_<number>
                # I.e., turn the following: 
                # CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cpy_84_goodG2B.cpp
                # To
                # CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cpy_84
                m = re.match(r'^(CWE\d+_.+?_\d+)', file_only)
                if not m:
                    continue
                base_name = m.group(1)

                # The files are sorted, so skip if the new file is the previous
                if base_name == prev_base:
                    continue
                prev_base = base_name


                # Enter with a target file. Return top level good function, the name of the bitcode file, and which variant it is.
                # print("Entering with: " + base_name)
                results = find_function(base_name, elf_path, "bad")
                if not results:
                    print("Found no matches for: " + base_name)
                    continue
                # Extract the llvm function out of the binary. Return the llvm path
                target_function, classification, variant_nr = results
                
                # Bad functions only have one string
                target_function = next(iter(target_function))

                # print(result)
                # print("Extracting function: " + target_function)
                ll_out = extract_function(target_function, target_function, classification, variant_nr, elf_binary, subfolder)
                print(f"ll_out: {ll_out}")

                # Prevent label leakage by changing CWEXX_...bad to anonX
                anonymize(ll_out)                    

                # Get which source file is vulnerable and which line this is using manifest
                vulnerable, src_name, line_nr = get_vulnerability(base_name)

                # Get the vulnerable line using line2addr
                if not vulnerable:
                    print("what. It should be?")
                    print(f"target function: {target_function}")

                full_src = os.path.join(subfolder, src_name)
                
                removed = mark_vulnerability(full_src, ll_out, line_nr, elf_path)

                if removed:
                    print("No vulnerability. Removed")
                    continue

                # Remove metadata and additional information not useful
                # clean(ll_out)



                # Again but with good
                # print("Entering with: " + base_name)
                results = find_function(base_name, elf_path, "good")
                if not results:
                    print("Found no matches for: " + base_name)
                    continue

                # Extract the llvm function out of the binary. Return the llvm path
                target_function, classification, variant_nr = results
                print(f"elf_path: {elf_path}")
                good_functions = find_good(target_function, elf_path)

                outname = f"{next(iter(target_function))}"

                # print(f"outname: {outname}") 
                # print(f"good function returned: {good_functions}")
                # For all potential good functions
                for idx, t_function in enumerate(good_functions, start=1):
                
                    print(f"Calling extract: {outname}, {idx}")
                    ll_out = extract_function(outname, t_function, classification, variant_nr, elf_binary, subfolder, idx)
                    print(f"ll_out: {ll_out}")
                    # Prevent label leakage by changing CWEXX_...bad to anonX
                    anonymize(ll_out)

                    # Remove metadata and additional information not useful
                    clean(ll_out)




for folder in os.listdir(cwe_folder):
    subfolder = os.path.join(cwe_folder, folder)
    if os.path.isdir(subfolder):

        if folder == "classification" or folder == "classification2":
            continue


        print(f"\n{folder}: ")
        process_folder(subfolder)
        print(len(maybe_optimized))
