define void @anon0() local_unnamed_addr {
dec_label_pc_41eaa:
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %1, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [100 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataGoodBuffer_-240, align 8
  %3 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = icmp ult i64 %4, 100
  %6 = ptrtoint ptr %stack_var_-232 to i64
  br i1 %5, label %dec_label_pc_41f22.lr.ph, label %dec_label_pc_41f58

dec_label_pc_41f22.lr.ph:                         ; preds = %dec_label_pc_41eaa
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %4, ptr %.reg2mem, align 8
  br label %dec_label_pc_41f22

dec_label_pc_41f22:                               ; preds = %dec_label_pc_41f22.lr.ph, %dec_label_pc_41f22
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %6
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = load i64, ptr %3, align 8
  %14 = trunc i64 %13 to i8
  %15 = add i8 %14, 1
  %16 = insertvalue [100 x i8] undef, i8 %15, 0
  store [100 x i8] %16, ptr %dataGoodBuffer_-240, align 8
  %17 = load i64, ptr %3, align 8
  %18 = icmp ult i64 %17, 100
  store i64 %17, ptr %.reg2mem, align 8
  br i1 %18, label %dec_label_pc_41f22, label %dec_label_pc_41f58

dec_label_pc_41f58:                               ; preds = %dec_label_pc_41f22, %dec_label_pc_41eaa
  %19 = add i64 %6, 99
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  call void @printLine(ptr nonnull %1)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_41f8a, label %dec_label_pc_41f85

dec_label_pc_41f85:                               ; preds = %dec_label_pc_41f58
  call void @__stack_chk_fail()
  br label %dec_label_pc_41f8a

dec_label_pc_41f8a:                               ; preds = %dec_label_pc_41f85, %dec_label_pc_41f58
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

