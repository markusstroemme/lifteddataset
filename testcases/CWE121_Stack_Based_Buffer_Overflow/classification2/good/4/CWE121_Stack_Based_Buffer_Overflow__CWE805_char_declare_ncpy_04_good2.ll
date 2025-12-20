define void @anon0() local_unnamed_addr {
dec_label_pc_53803:
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-232 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataGoodBuffer_-240, align 8
  %4 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = load i64, ptr %4, align 8
  %9 = inttoptr i64 %8 to ptr
  %10 = bitcast ptr %stack_var_-120 to ptr
  %11 = call ptr @strncpy(ptr %9, ptr nonnull %10, i32 99)
  %12 = add i64 %8, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = load i64, ptr %4, align 8
  %15 = inttoptr i64 %14 to ptr
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_538a9, label %dec_label_pc_538a4

dec_label_pc_538a4:                               ; preds = %dec_label_pc_53803
  call void @__stack_chk_fail()
  br label %dec_label_pc_538a9

dec_label_pc_538a9:                               ; preds = %dec_label_pc_538a4, %dec_label_pc_53803
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

