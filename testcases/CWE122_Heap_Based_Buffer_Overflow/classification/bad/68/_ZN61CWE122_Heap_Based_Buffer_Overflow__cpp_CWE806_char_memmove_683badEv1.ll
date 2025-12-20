@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_memmove_68_badData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21587:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_memmove_68_badData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_21633:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_memmove_68_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %4, i32 %3)
  call void @printLine(ptr %2)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %dec_label_pc_216d4, label %dec_label_pc_216c8

dec_label_pc_216c8:                               ; preds = %dec_label_pc_21633
  %7 = and i64 %1, 4294967295
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %4, ptr %8)
  br label %dec_label_pc_216d4

dec_label_pc_216d4:                               ; preds = %dec_label_pc_216c8, %dec_label_pc_21633
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_216e9, label %dec_label_pc_216e4

dec_label_pc_216e4:                               ; preds = %dec_label_pc_216d4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_216e9

dec_label_pc_216e9:                               ; preds = %dec_label_pc_216e4, %dec_label_pc_216d4
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

