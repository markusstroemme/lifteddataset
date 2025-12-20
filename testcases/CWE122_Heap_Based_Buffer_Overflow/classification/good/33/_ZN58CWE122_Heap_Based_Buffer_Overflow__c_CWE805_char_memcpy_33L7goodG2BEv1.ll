@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36763:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_367c2, label %dec_label_pc_367b8

dec_label_pc_367b8:                               ; preds = %dec_label_pc_36763
  call void @exit(i32 -1)
  unreachable

dec_label_pc_367c2:                               ; preds = %dec_label_pc_36763
  %4 = bitcast ptr %1 to ptr
  %5 = ptrtoint ptr %1 to i64
  store i8 0, ptr %4, align 1
  %6 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %7 = load i64, ptr %stack_var_-136, align 8
  store i64 %7, ptr %1, align 8
  %8 = add i64 %5, 8
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %5, 16
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %5, 24
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %5, 32
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %5, 40
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %5, 48
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %5, 56
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %5, 64
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %5, 72
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %5, 80
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %5, 88
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %5, 96
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %5, 99
  %33 = inttoptr i64 %32 to ptr
  store i8 0, ptr %33, align 1
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %0, %34
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %35, label %dec_label_pc_368a4, label %dec_label_pc_3689f

dec_label_pc_3689f:                               ; preds = %dec_label_pc_367c2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_368a4

dec_label_pc_368a4:                               ; preds = %dec_label_pc_3689f, %dec_label_pc_367c2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

