@global_var_b85c0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_579e9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec04c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_57a51, label %dec_label_pc_57a08

dec_label_pc_57a08:                               ; preds = %dec_label_pc_579e9
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge3.in = xor i32 %12, %13
  %.pre = load i32, ptr @global_var_ec04c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_57a51

dec_label_pc_57a51:                               ; preds = %dec_label_pc_57a08, %dec_label_pc_579e9
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_57b19, label %dec_label_pc_57a60

dec_label_pc_57a60:                               ; preds = %dec_label_pc_57a51
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %16 = call ptr @malloc(i32 40)
  %17 = ptrtoint ptr %16 to i64
  %18 = icmp eq ptr %16, null
  %19 = icmp eq i1 %18, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %19, label %dec_label_pc_57a88, label %dec_label_pc_57a75

dec_label_pc_57a75:                               ; preds = %dec_label_pc_57a60
  call void @exit(i32 -1)
  unreachable

dec_label_pc_57a88:                               ; preds = %dec_label_pc_57a60, %dec_label_pc_57a88
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %20 = mul i64 %indvars.iv6.reload, 4
  %21 = add i64 %20, %17
  %22 = inttoptr i64 %21 to ptr
  store i32 0, ptr %22, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_57aac, label %dec_label_pc_57a88

dec_label_pc_57aac:                               ; preds = %dec_label_pc_57a88
  %23 = icmp slt i32 %stack_var_-40.0.reload, 0
  br i1 %23, label %dec_label_pc_57afe, label %dec_label_pc_57ab2

dec_label_pc_57ab2:                               ; preds = %dec_label_pc_57aac
  %24 = sext i32 %stack_var_-40.0.reload to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %25, %17
  %27 = inttoptr i64 %26 to ptr
  store i32 1, ptr %27, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_57ad5

dec_label_pc_57ad5:                               ; preds = %dec_label_pc_57ad5, %dec_label_pc_57ab2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %28 = mul i64 %indvars.iv.reload, 4
  %29 = add i64 %28, %17
  %30 = inttoptr i64 %29 to ptr
  %31 = load i32, ptr %30, align 4
  call void @printIntLine(i32 %31)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_57b0d, label %dec_label_pc_57ad5

dec_label_pc_57afe:                               ; preds = %dec_label_pc_57aac
  call void @printLine(ptr @global_var_b85c0)
  br label %dec_label_pc_57b0d

dec_label_pc_57b0d:                               ; preds = %dec_label_pc_57ad5, %dec_label_pc_57afe
  call void @free(ptr %16)
  br label %dec_label_pc_57b19

dec_label_pc_57b19:                               ; preds = %dec_label_pc_57b0d, %dec_label_pc_57a51
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

