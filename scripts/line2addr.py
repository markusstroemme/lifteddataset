import os
import sys
from elftools.elf.elffile import ELFFile


# Open the dynamically linked ELF binary and resolve LLVM debug info
def line2addr(source_c, line_number, target_ll, binary):
    with open(binary, "rb") as f:
        elffile = ELFFile(f)

        if not elffile.has_dwarf_info():
            raise Exception("No DWARF info found")

        dwarfinfo = elffile.get_dwarf_info()

        # Only match against the filename part of the source file
        target_file = os.path.basename(source_c)

        # Iterate over compilation units to find machine code addresses
        for CU in dwarfinfo.iter_CUs():
            lineprog = dwarfinfo.line_program_for_CU(CU)

            # Resolve file index once
            file_index = None
            for i, fe in enumerate(lineprog['file_entry']):
                if fe.name.decode().endswith(target_file):
                    file_index = i + 1
                    break
            if file_index is None:
                continue

            # Collect all rows with state
            rows = [e.state for e in lineprog.get_entries()
                    if e.state and not e.state.end_sequence]

            # Filter only this file
            rows = [r for r in rows if r.file == file_index]
            # Find start and end address range for the line
            start = False
            end = False
            for idx, r in enumerate(rows):
                # print(r.address)
                if r.line == line_number:
                    start = r.address
                    end = rows[idx+1].address if idx+1 < len(rows) else None
                    # print(f"start: {start}")
                    # print(f"end: {end}")
                    # print(int(r.address))                    
                    break
            print(f"start: {start}")
            print(f"end: {end}")
            if source_c:
                if start and end:
                    if int(start) > int(end):
                        raise Exception("Addresses have not been processed correctly")
    
                    with open(target_ll, 'r') as file:
                        lines = file.readlines()
                    # Find the debug address inside the LLVM file
                    debug_addr = ""
                    for line in lines:
                        if line.strip().startswith("!"):
                            # Example: !2 = !{i64 151807} => 151807
                            addr = int(line.split("{")[1].split("}")[0].strip().split()[1])
                            # print(addr)
                            if addr >= start and (end is None or addr <= end):
                                debug_addr = line.split("=")[0].strip()
                                # print("hello?")
                                return debug_addr.strip()
    
                    # Find the instruction line in LLVM IR using debug address
                    for line in lines:
                        if line.strip().endswith(f"!insn.addr {debug_addr}"):
                            print(line.strip())
    # print("hm something wrong!")
    # print(f"source_c: {source_c}")
    # print(f"line_number: {line_number}")
    # print(f"target_ll: {target_ll}")
    # print(f"binary: {binary}")
    # print("good luck :)")
    return False


if __name__ == "__main__":
    # Example usage with hardcoded values
    # Replace with sys.argv handling if you want to pass arguments at runtime

    # Source c/c++ file
    source_c = r"D:\Skole\master\juliet dataset\C\testcases\CWE121_Stack_Based_Buffer_Overflow\s08\CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_84_bad.cpp"

    # Line number for vulnerability
    line_number = 36

    # Target LLVM file
    target_ll = r"D:\Skole\master\juliet dataset\C\testcases\CWE121_Stack_Based_Buffer_Overflow\classification\bad\84\_ZN58CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_843badEv1.ll"

    # Binary file compiled from source
    binary = r"D:\Skole\master\juliet dataset\C\testcases\CWE121_Stack_Based_Buffer_Overflow\s08\CWE121_s08"

    # Normalize paths for current OS
    source_c = os.path.normpath(source_c)
    target_ll = os.path.normpath(target_ll)
    binary_path = os.path.normpath(binary)

    # Basic existence checks
    for path in [source_c, target_ll, binary_path]:
        if not os.path.exists(path):
            print(f"Missing file: {path}")
            sys.exit(1)

    print(line2addr(source_c, line_number, target_ll, binary_path))
