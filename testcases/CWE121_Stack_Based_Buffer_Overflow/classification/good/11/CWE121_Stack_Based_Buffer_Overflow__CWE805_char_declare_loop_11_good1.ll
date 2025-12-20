@global_var_81551 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_423f4:
  %.reg2mem = alloca i64, align 8
  %stack_var_-248.0.reg2mem = alloca ptr, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_42431, label %dec_label_pc_42420

dec_label_pc_42420:                               ; preds = %dec_label_pc_423f4
  call void @printLine(ptr @global_var_81551)
  br label %dec_label_pc_42449

dec_label_pc_42431:                               ; preds = %dec_label_pc_423f4
  %3 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-248.0.reg2mem, align 8
  br label %dec_label_pc_42449

dec_label_pc_42449:                               ; preds = %dec_label_pc_42431, %dec_label_pc_42420
  %stack_var_-248.0.reload = load ptr, ptr %stack_var_-248.0.reg2mem, align 8
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [100 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataGoodBuffer_-240, align 8
  %5 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  %8 = ptrtoint ptr %stack_var_-248.0.reload to i64
  br i1 %7, label %dec_label_pc_42470.lr.ph, label %dec_label_pc_424a6

dec_label_pc_42470.lr.ph:                         ; preds = %dec_label_pc_42449
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_42470

dec_label_pc_42470:                               ; preds = %dec_label_pc_42470.lr.ph, %dec_label_pc_42470
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = add i64 %.reload, %8
  %11 = add i64 %.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = load i64, ptr %5, align 8
  %16 = trunc i64 %15 to i8
  %17 = add i8 %16, 1
  %18 = insertvalue [100 x i8] undef, i8 %17, 0
  store [100 x i8] %18, ptr %dataGoodBuffer_-240, align 8
  %19 = load i64, ptr %5, align 8
  %20 = icmp ult i64 %19, 100
  store i64 %19, ptr %.reg2mem, align 8
  br i1 %20, label %dec_label_pc_42470, label %dec_label_pc_424a6

dec_label_pc_424a6:                               ; preds = %dec_label_pc_42470, %dec_label_pc_42449
  %21 = add i64 %8, 99
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  call void @printLine(ptr %stack_var_-248.0.reload)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_424d8, label %dec_label_pc_424d3

dec_label_pc_424d3:                               ; preds = %dec_label_pc_424a6
  call void @__stack_chk_fail()
  br label %dec_label_pc_424d8

dec_label_pc_424d8:                               ; preds = %dec_label_pc_424d3, %dec_label_pc_424a6
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6debc:
  ret i32 0
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

