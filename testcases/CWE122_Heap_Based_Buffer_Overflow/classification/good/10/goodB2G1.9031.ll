@global_var_b8700 = external constant [21 x i8]
@global_var_b8718 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec070 = external local_unnamed_addr global i32
@global_var_ec348 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_58cff:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec070, align 4
  %1 = icmp eq i32 %0, 0
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_58d66, label %dec_label_pc_58d1d

dec_label_pc_58d1d:                               ; preds = %dec_label_pc_58cff
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
  br label %dec_label_pc_58d66

dec_label_pc_58d66:                               ; preds = %dec_label_pc_58d1d, %dec_label_pc_58cff
  %13 = load i32, ptr @global_var_ec348, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_58d84, label %dec_label_pc_58d70

dec_label_pc_58d70:                               ; preds = %dec_label_pc_58d66
  call void @printLine(ptr @global_var_b8700)
  br label %dec_label_pc_58e43

dec_label_pc_58d84:                               ; preds = %dec_label_pc_58d66
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %15 = call ptr @malloc(i32 40)
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq ptr %15, null
  %18 = icmp eq i1 %17, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %18, label %dec_label_pc_58dac, label %dec_label_pc_58d99

dec_label_pc_58d99:                               ; preds = %dec_label_pc_58d84
  call void @exit(i32 -1)
  unreachable

dec_label_pc_58dac:                               ; preds = %dec_label_pc_58d84, %dec_label_pc_58dac
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %19 = mul i64 %indvars.iv7.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_58dd0, label %dec_label_pc_58dac

dec_label_pc_58dd0:                               ; preds = %dec_label_pc_58dac
  %22 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %22, label %dec_label_pc_58e28, label %dec_label_pc_58ddc

dec_label_pc_58ddc:                               ; preds = %dec_label_pc_58dd0
  %23 = sext i32 %stack_var_-40.0.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %16
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_58dff

dec_label_pc_58dff:                               ; preds = %dec_label_pc_58dff, %dec_label_pc_58ddc
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %16
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_58e37, label %dec_label_pc_58dff

dec_label_pc_58e28:                               ; preds = %dec_label_pc_58dd0
  call void @printLine(ptr @global_var_b8718)
  br label %dec_label_pc_58e37

dec_label_pc_58e37:                               ; preds = %dec_label_pc_58dff, %dec_label_pc_58e28
  call void @free(ptr %15)
  br label %dec_label_pc_58e43

dec_label_pc_58e43:                               ; preds = %dec_label_pc_58e37, %dec_label_pc_58d70
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

