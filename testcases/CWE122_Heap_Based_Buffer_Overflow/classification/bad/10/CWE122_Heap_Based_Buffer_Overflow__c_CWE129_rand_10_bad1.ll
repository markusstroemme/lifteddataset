@global_var_b86e0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_58bca:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_58cf8, label %dec_label_pc_58c31

dec_label_pc_58c31:                               ; preds = %dec_label_pc_58bca
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %.pr = load i32, ptr @global_var_ec070, align 4
  %6 = icmp eq i32 %.pr, 0
  br i1 %6, label %dec_label_pc_58cf8, label %dec_label_pc_58c3f

dec_label_pc_58c3f:                               ; preds = %dec_label_pc_58c31
  %7 = urem i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %3, 1073741824
  %10 = mul i32 %4, 32768
  %11 = xor i32 %10, %9
  %12 = xor i32 %11, %5
  %13 = sext i1 %8 to i32
  %storemerge3.in = xor i32 %12, %13
  %14 = call ptr @malloc(i32 40)
  %15 = ptrtoint ptr %14 to i64
  %16 = icmp eq ptr %14, null
  %17 = icmp eq i1 %16, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %17, label %dec_label_pc_58c67, label %dec_label_pc_58c54

dec_label_pc_58c54:                               ; preds = %dec_label_pc_58c3f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_58c67:                               ; preds = %dec_label_pc_58c3f, %dec_label_pc_58c67
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %18 = mul i64 %indvars.iv6.reload, 4
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_58c8b, label %dec_label_pc_58c67

dec_label_pc_58c8b:                               ; preds = %dec_label_pc_58c67
  %21 = icmp slt i32 %storemerge3.in, 0
  br i1 %21, label %dec_label_pc_58cdd, label %dec_label_pc_58c91

dec_label_pc_58c91:                               ; preds = %dec_label_pc_58c8b
  %22 = sext i32 %storemerge3.in to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %23, %15
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_58cb4

dec_label_pc_58cb4:                               ; preds = %dec_label_pc_58cb4, %dec_label_pc_58c91
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %15
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_58cec, label %dec_label_pc_58cb4

dec_label_pc_58cdd:                               ; preds = %dec_label_pc_58c8b
  call void @printLine(ptr @global_var_b86e0)
  br label %dec_label_pc_58cec

dec_label_pc_58cec:                               ; preds = %dec_label_pc_58cb4, %dec_label_pc_58cdd
  call void @free(ptr %14)
  br label %dec_label_pc_58cf8

dec_label_pc_58cf8:                               ; preds = %dec_label_pc_58bca, %dec_label_pc_58cec, %dec_label_pc_58c31
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

