define void @anon0() local_unnamed_addr {
dec_label_pc_4cbb7:
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = ptrtoint ptr %stack_var_-232 to i64
  %3 = trunc i64 %2 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-240, align 8
  %5 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = load i64, ptr %5, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-120, i32 100)
  %12 = add i64 %9, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = load i64, ptr %5, align 8
  %15 = inttoptr i64 %14 to ptr
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_4cc7c, label %dec_label_pc_4cc77

dec_label_pc_4cc77:                               ; preds = %dec_label_pc_4cbb7
  call void @__stack_chk_fail()
  br label %dec_label_pc_4cc7c

dec_label_pc_4cc7c:                               ; preds = %dec_label_pc_4cc77, %dec_label_pc_4cbb7
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

