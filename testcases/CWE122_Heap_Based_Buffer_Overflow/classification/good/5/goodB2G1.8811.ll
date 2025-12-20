@global_var_b8518 = external constant [21 x i8]
@global_var_b8530 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec048 = external local_unnamed_addr global i32
@global_var_ec24c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_56f68:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec048, align 4
  %1 = icmp eq i32 %0, 0
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_56fcf, label %dec_label_pc_56f86

dec_label_pc_56f86:                               ; preds = %dec_label_pc_56f68
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge3.in = xor i32 %11, %12
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_56fcf

dec_label_pc_56fcf:                               ; preds = %dec_label_pc_56f86, %dec_label_pc_56f68
  %13 = load i32, ptr @global_var_ec24c, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_56fed, label %dec_label_pc_56fd9

dec_label_pc_56fd9:                               ; preds = %dec_label_pc_56fcf
  call void @printLine(ptr @global_var_b8518)
  br label %dec_label_pc_570ac

dec_label_pc_56fed:                               ; preds = %dec_label_pc_56fcf
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %15 = call ptr @malloc(i32 40)
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq ptr %15, null
  %18 = icmp eq i1 %17, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %18, label %dec_label_pc_57015, label %dec_label_pc_57002

dec_label_pc_57002:                               ; preds = %dec_label_pc_56fed
  call void @exit(i32 -1)
  unreachable

dec_label_pc_57015:                               ; preds = %dec_label_pc_56fed, %dec_label_pc_57015
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %19 = mul i64 %indvars.iv7.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_57039, label %dec_label_pc_57015

dec_label_pc_57039:                               ; preds = %dec_label_pc_57015
  %22 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %22, label %dec_label_pc_57091, label %dec_label_pc_57045

dec_label_pc_57045:                               ; preds = %dec_label_pc_57039
  %23 = sext i32 %stack_var_-40.0.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %16
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_57068

dec_label_pc_57068:                               ; preds = %dec_label_pc_57068, %dec_label_pc_57045
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %16
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_570a0, label %dec_label_pc_57068

dec_label_pc_57091:                               ; preds = %dec_label_pc_57039
  call void @printLine(ptr @global_var_b8530)
  br label %dec_label_pc_570a0

dec_label_pc_570a0:                               ; preds = %dec_label_pc_57068, %dec_label_pc_57091
  call void @free(ptr %15)
  br label %dec_label_pc_570ac

dec_label_pc_570ac:                               ; preds = %dec_label_pc_570a0, %dec_label_pc_56fd9
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

