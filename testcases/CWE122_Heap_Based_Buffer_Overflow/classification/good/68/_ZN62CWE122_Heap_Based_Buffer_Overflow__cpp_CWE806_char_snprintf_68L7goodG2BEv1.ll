@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_snprintf_68_goodG2BData = external local_unnamed_addr global i64
@global_var_47b1a = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_38aa1:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_snprintf_68_goodG2BData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_38bbf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_snprintf_68_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = bitcast ptr %stack_var_-72 to ptr
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %4, i32 %3, ptr @global_var_47b1a, ptr %2)
  call void @printLine(ptr %2)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %dec_label_pc_38c68, label %dec_label_pc_38c5c

dec_label_pc_38c5c:                               ; preds = %dec_label_pc_38bbf
  %7 = zext i32 %3 to i64
  %8 = inttoptr i64 %1 to ptr
  %9 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %8, ptr %9)
  br label %dec_label_pc_38c68

dec_label_pc_38c68:                               ; preds = %dec_label_pc_38c5c, %dec_label_pc_38bbf
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_38c7d, label %dec_label_pc_38c78

dec_label_pc_38c78:                               ; preds = %dec_label_pc_38c68
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_38c7d

dec_label_pc_38c7d:                               ; preds = %dec_label_pc_38c78, %dec_label_pc_38c68
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

