@global_var_9f074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_42c1c:
  %.reg2mem = alloca i64, align 8
  %stack_var_-248.0.reg2mem = alloca ptr, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_9f074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_42c5d, label %dec_label_pc_42c45

dec_label_pc_42c45:                               ; preds = %dec_label_pc_42c1c
  %4 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %4, align 8
  store ptr %4, ptr %stack_var_-248.0.reg2mem, align 8
  br label %dec_label_pc_42c5d

dec_label_pc_42c5d:                               ; preds = %dec_label_pc_42c45, %dec_label_pc_42c1c
  %stack_var_-248.0.reload = load ptr, ptr %stack_var_-248.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [100 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataGoodBuffer_-240, align 8
  %6 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = icmp ult i64 %7, 100
  %9 = ptrtoint ptr %stack_var_-248.0.reload to i64
  br i1 %8, label %dec_label_pc_42c84.lr.ph, label %dec_label_pc_42cba

dec_label_pc_42c84.lr.ph:                         ; preds = %dec_label_pc_42c5d
  %10 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %7, ptr %.reg2mem, align 8
  br label %dec_label_pc_42c84

dec_label_pc_42c84:                               ; preds = %dec_label_pc_42c84.lr.ph, %dec_label_pc_42c84
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %9
  %12 = add i64 %.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = load i64, ptr %6, align 8
  %17 = trunc i64 %16 to i8
  %18 = add i8 %17, 1
  %19 = insertvalue [100 x i8] undef, i8 %18, 0
  store [100 x i8] %19, ptr %dataGoodBuffer_-240, align 8
  %20 = load i64, ptr %6, align 8
  %21 = icmp ult i64 %20, 100
  store i64 %20, ptr %.reg2mem, align 8
  br i1 %21, label %dec_label_pc_42c84, label %dec_label_pc_42cba

dec_label_pc_42cba:                               ; preds = %dec_label_pc_42c84, %dec_label_pc_42c5d
  %22 = add i64 %9, 99
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  call void @printLine(ptr %stack_var_-248.0.reload)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_42cec, label %dec_label_pc_42ce7

dec_label_pc_42ce7:                               ; preds = %dec_label_pc_42cba
  call void @__stack_chk_fail()
  br label %dec_label_pc_42cec

dec_label_pc_42cec:                               ; preds = %dec_label_pc_42ce7, %dec_label_pc_42cba
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

