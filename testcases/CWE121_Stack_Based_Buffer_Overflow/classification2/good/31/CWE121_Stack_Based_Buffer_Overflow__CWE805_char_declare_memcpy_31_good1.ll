define void @anon0() local_unnamed_addr {
dec_label_pc_48b4a:
  %stack_var_-136 = alloca i64, align 8
  %dataGoodBuffer_-256 = alloca [100 x i8], align 8
  %dataGoodBuffer_-264 = alloca [100 x i8], align 8
  %stack_var_-248 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-248 to i64
  %2 = bitcast ptr %stack_var_-248 to ptr
  store i8 0, ptr %2, align 8
  %3 = trunc i64 %1 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-264, align 8
  %5 = bitcast ptr %dataGoodBuffer_-264 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i8
  %8 = insertvalue [100 x i8] undef, i8 %7, 0
  store [100 x i8] %8, ptr %dataGoodBuffer_-256, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %10 = bitcast ptr %dataGoodBuffer_-256 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %stack_var_-136, align 8
  %13 = inttoptr i64 %11 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add i64 %11, 8
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %11, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %11, 24
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %11, 32
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %11, 40
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %11, 48
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %11, 56
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %11, 64
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %11, 72
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %11, 80
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %11, 88
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %11, 96
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %10, align 8
  %39 = add i64 %38, 99
  %40 = inttoptr i64 %39 to ptr
  store i8 0, ptr %40, align 1
  %41 = load i64, ptr %10, align 8
  %42 = inttoptr i64 %41 to ptr
  call void @printLine(ptr %42)
  %43 = call i64 @__readfsqword(i64 40)
  %44 = icmp eq i64 %0, %43
  br i1 %44, label %dec_label_pc_48c55, label %dec_label_pc_48c50

dec_label_pc_48c50:                               ; preds = %dec_label_pc_48b4a
  call void @__stack_chk_fail()
  br label %dec_label_pc_48c55

dec_label_pc_48c55:                               ; preds = %dec_label_pc_48c50, %dec_label_pc_48b4a
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

