define void @anon0() local_unnamed_addr {
dec_label_pc_48654:
  %stack_var_-136 = alloca i64, align 8
  %dataBadBuffer_-208 = alloca [50 x i8], align 8
  %stack_var_-200 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-200 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  %4 = bitcast ptr %dataBadBuffer_-208 to ptr
  store [50 x i8] %3, ptr %dataBadBuffer_-208, align 8
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %8 = load i64, ptr %4, align 8
  %9 = load i64, ptr %stack_var_-136, align 8
  %10 = inttoptr i64 %8 to ptr
  store i64 %9, ptr %10, align 8
  %11 = add i64 %8, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %8, 16
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %8, 24
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %8, 32
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %8, 40
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %8, 48
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %8, 56
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %8, 64
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %8, 72
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %8, 80
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %8, 88
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %8, 96
  %34 = inttoptr i64 %33 to ptr
  %35 = load i64, ptr %4, align 8
  %36 = add i64 %35, 99
  %37 = inttoptr i64 %36 to ptr
  store i8 0, ptr %37, align 1
  %38 = load i64, ptr %4, align 8
  %39 = inttoptr i64 %38 to ptr
  call void @printLine(ptr %39)
  %40 = call i64 @__readfsqword(i64 40)
  %41 = icmp eq i64 %0, %40
  br i1 %41, label %dec_label_pc_4870c, label %dec_label_pc_48707

dec_label_pc_48707:                               ; preds = %dec_label_pc_48654
  call void @__stack_chk_fail()
  br label %dec_label_pc_4870c

dec_label_pc_4870c:                               ; preds = %dec_label_pc_48707, %dec_label_pc_48654
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

