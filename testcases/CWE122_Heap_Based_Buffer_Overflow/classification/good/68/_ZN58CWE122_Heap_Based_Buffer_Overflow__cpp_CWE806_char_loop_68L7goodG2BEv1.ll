@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_goodG2BData = external local_unnamed_addr global i64
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_d2e1:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_goodG2BData, align 8
  %5 = call i64 @anon1()
  ret i64 %5
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_d419:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE806_char_loop_68_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_d4b9, label %dec_label_pc_d48f.lr.ph

dec_label_pc_d48f.lr.ph:                          ; preds = %dec_label_pc_d419
  %7 = sext i32 %5 to i64
  %8 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_d48f

dec_label_pc_d48f:                                ; preds = %dec_label_pc_d48f.lr.ph, %dec_label_pc_d48f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = add i64 %storemerge1.reload, %3
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = add i64 %storemerge1.reload, %8
  %13 = inttoptr i64 %12 to ptr
  store i8 %11, ptr %13, align 1
  %14 = add nuw i64 %storemerge1.reload, 1
  %15 = icmp ult i64 %14, %7
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_d48f, label %dec_label_pc_d4b9

dec_label_pc_d4b9:                                ; preds = %dec_label_pc_d48f, %dec_label_pc_d419
  call void @printLine(ptr %4)
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_d4dc, label %dec_label_pc_d4d0

dec_label_pc_d4d0:                                ; preds = %dec_label_pc_d4b9
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_d4dc

dec_label_pc_d4dc:                                ; preds = %dec_label_pc_d4d0, %dec_label_pc_d4b9
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_d4f1, label %dec_label_pc_d4ec

dec_label_pc_d4ec:                                ; preds = %dec_label_pc_d4dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_d4f1

dec_label_pc_d4f1:                                ; preds = %dec_label_pc_d4ec, %dec_label_pc_d4dc
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

declare i64 @__readfsqword(i64) local_unnamed_addr

