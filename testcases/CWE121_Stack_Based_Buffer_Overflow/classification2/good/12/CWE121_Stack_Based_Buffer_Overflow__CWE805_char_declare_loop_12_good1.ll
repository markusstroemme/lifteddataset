define void @anon0() local_unnamed_addr {
dec_label_pc_426bd:
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %2, align 8
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [100 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataGoodBuffer_-240, align 8
  %4 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp ult i64 %5, 100
  %7 = ptrtoint ptr %stack_var_-232 to i64
  br i1 %6, label %dec_label_pc_42742.lr.ph, label %dec_label_pc_42778

dec_label_pc_42742.lr.ph:                         ; preds = %dec_label_pc_426bd
  %8 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %5, ptr %.reg2mem, align 8
  br label %dec_label_pc_42742

dec_label_pc_42742:                               ; preds = %dec_label_pc_42742.lr.ph, %dec_label_pc_42742
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = add i64 %.reload, %7
  %10 = add i64 %.reload, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = load i64, ptr %4, align 8
  %15 = trunc i64 %14 to i8
  %16 = add i8 %15, 1
  %17 = insertvalue [100 x i8] undef, i8 %16, 0
  store [100 x i8] %17, ptr %dataGoodBuffer_-240, align 8
  %18 = load i64, ptr %4, align 8
  %19 = icmp ult i64 %18, 100
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_42742, label %dec_label_pc_42778

dec_label_pc_42778:                               ; preds = %dec_label_pc_42742, %dec_label_pc_426bd
  %20 = add i64 %7, 99
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  call void @printLine(ptr nonnull %2)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_427aa, label %dec_label_pc_427a5

dec_label_pc_427a5:                               ; preds = %dec_label_pc_42778
  call void @__stack_chk_fail()
  br label %dec_label_pc_427aa

dec_label_pc_427aa:                               ; preds = %dec_label_pc_427a5, %dec_label_pc_42778
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

