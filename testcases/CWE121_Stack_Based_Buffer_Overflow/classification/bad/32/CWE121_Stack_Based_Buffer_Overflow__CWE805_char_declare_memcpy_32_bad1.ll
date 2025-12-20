define void @anon0() local_unnamed_addr {
dec_label_pc_48c70:
  %stack_var_-136 = alloca i64, align 8
  %dataBadBuffer_-208 = alloca [50 x i8], align 8
  %stack_var_-200 = alloca i64, align 8
  %dataBadBuffer_-216 = alloca [50 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-200 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-216, align 8
  %4 = bitcast ptr %dataBadBuffer_-216 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i8
  %9 = insertvalue [50 x i8] undef, i8 %8, 0
  store [50 x i8] %9, ptr %dataBadBuffer_-208, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %11 = bitcast ptr %dataBadBuffer_-208 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %stack_var_-136, align 8
  %14 = inttoptr i64 %12 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %12, 8
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %12, 16
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %12, 24
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %12, 32
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %12, 40
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %12, 48
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %12, 56
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %12, 64
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %12, 72
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %12, 80
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %12, 88
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %12, 96
  %38 = inttoptr i64 %37 to ptr
  %39 = load i64, ptr %11, align 8
  %40 = add i64 %39, 99
  %41 = inttoptr i64 %40 to ptr
  store i8 0, ptr %41, align 1
  %42 = load i64, ptr %11, align 8
  %43 = inttoptr i64 %42 to ptr
  call void @printLine(ptr %43)
  %44 = call i64 @__readfsqword(i64 40)
  %45 = icmp eq i64 %0, %44
  br i1 %45, label %dec_label_pc_48dae, label %dec_label_pc_48da9

dec_label_pc_48da9:                               ; preds = %dec_label_pc_48c70
  call void @__stack_chk_fail()
  br label %dec_label_pc_48dae

dec_label_pc_48dae:                               ; preds = %dec_label_pc_48da9, %dec_label_pc_48c70
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

