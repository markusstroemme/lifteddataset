@CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cat_68_badData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2eeb4:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cat_68_badData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2ef60:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cat_68_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @strcat(ptr nonnull %2, ptr %3)
  call void @printLine(ptr %3)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_2efee, label %dec_label_pc_2efe2

dec_label_pc_2efe2:                               ; preds = %dec_label_pc_2ef60
  %6 = inttoptr i64 %1 to ptr
  %7 = and i64 %1, 4294967295
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %6, ptr %8)
  br label %dec_label_pc_2efee

dec_label_pc_2efee:                               ; preds = %dec_label_pc_2efe2, %dec_label_pc_2ef60
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2f003, label %dec_label_pc_2effe

dec_label_pc_2effe:                               ; preds = %dec_label_pc_2efee
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2f003

dec_label_pc_2f003:                               ; preds = %dec_label_pc_2effe, %dec_label_pc_2efee
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

