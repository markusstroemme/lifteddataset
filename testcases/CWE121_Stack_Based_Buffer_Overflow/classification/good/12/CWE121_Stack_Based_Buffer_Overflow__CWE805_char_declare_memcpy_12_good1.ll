define void @anon0() local_unnamed_addr {
dec_label_pc_4796d:
  %stack_var_-136 = alloca i64, align 8
  %dataGoodBuffer_-256 = alloca [100 x i8], align 8
  %stack_var_-248 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = ptrtoint ptr %stack_var_-248 to i64
  %3 = trunc i64 %2 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-256, align 8
  %5 = bitcast ptr %dataGoodBuffer_-256 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %9 = load i64, ptr %5, align 8
  %10 = load i64, ptr %stack_var_-136, align 8
  %11 = inttoptr i64 %9 to ptr
  store i64 %10, ptr %11, align 8
  %12 = add i64 %9, 8
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %9, 16
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %9, 24
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %9, 32
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %9, 40
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %9, 48
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %9, 56
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %9, 64
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %9, 72
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %9, 80
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %9, 88
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %9, 96
  %35 = inttoptr i64 %34 to ptr
  %36 = load i64, ptr %5, align 8
  %37 = add i64 %36, 99
  %38 = inttoptr i64 %37 to ptr
  store i8 0, ptr %38, align 1
  %39 = load i64, ptr %5, align 8
  %40 = inttoptr i64 %39 to ptr
  call void @printLine(ptr %40)
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  br i1 %42, label %dec_label_pc_47a84, label %dec_label_pc_47a7f

dec_label_pc_47a7f:                               ; preds = %dec_label_pc_4796d
  call void @__stack_chk_fail()
  br label %dec_label_pc_47a84

dec_label_pc_47a84:                               ; preds = %dec_label_pc_47a7f, %dec_label_pc_4796d
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6decb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

