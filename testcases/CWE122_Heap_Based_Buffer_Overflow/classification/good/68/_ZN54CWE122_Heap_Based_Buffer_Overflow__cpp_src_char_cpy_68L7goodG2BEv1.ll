@CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cpy_68_goodG2BData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_361f4:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cpy_68_goodG2BData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_362f7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_src_char_cpy_68_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @strcpy(ptr nonnull %2, ptr %3)
  call void @printLine(ptr %3)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_36385, label %dec_label_pc_36379

dec_label_pc_36379:                               ; preds = %dec_label_pc_362f7
  %6 = inttoptr i64 %1 to ptr
  %7 = and i64 %1, 4294967295
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %6, ptr %8)
  br label %dec_label_pc_36385

dec_label_pc_36385:                               ; preds = %dec_label_pc_36379, %dec_label_pc_362f7
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3639a, label %dec_label_pc_36395

dec_label_pc_36395:                               ; preds = %dec_label_pc_36385
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3639a

dec_label_pc_3639a:                               ; preds = %dec_label_pc_36395, %dec_label_pc_36385
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

