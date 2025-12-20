@global_var_b87a0 = external constant [32 x i8]
@global_var_b87c0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_597a8:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 7, ptr %storemerge5.reg2mem, align 4
  br i1 %1, label %dec_label_pc_5981c, label %dec_label_pc_597ca

dec_label_pc_597ca:                               ; preds = %dec_label_pc_597a8
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
  %storemerge4.in = xor i32 %11, %12
  store i32 %storemerge4.in, ptr %storemerge5.reg2mem, align 4
  br label %dec_label_pc_5981c

dec_label_pc_5981c:                               ; preds = %dec_label_pc_597a8, %dec_label_pc_597ca
  %storemerge5.reload = load i32, ptr %storemerge5.reg2mem, align 4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  %15 = call ptr @malloc(i32 40)
  %16 = ptrtoint ptr %15 to i64
  %17 = icmp eq ptr %15, null
  %18 = icmp eq i1 %17, false
  br i1 %14, label %dec_label_pc_598ec, label %dec_label_pc_5982e

dec_label_pc_5982e:                               ; preds = %dec_label_pc_5981c
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  br i1 %18, label %dec_label_pc_59856, label %dec_label_pc_59843

dec_label_pc_59843:                               ; preds = %dec_label_pc_5982e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_59856:                               ; preds = %dec_label_pc_5982e, %dec_label_pc_59856
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %19 = mul i64 %indvars.iv17.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_5987a, label %dec_label_pc_59856

dec_label_pc_5987a:                               ; preds = %dec_label_pc_59856
  %22 = icmp slt i32 %storemerge5.reload, 0
  br i1 %22, label %dec_label_pc_598cc, label %dec_label_pc_59880

dec_label_pc_59880:                               ; preds = %dec_label_pc_5987a
  %23 = sext i32 %storemerge5.reload to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %24, %16
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_598a3

dec_label_pc_598a3:                               ; preds = %dec_label_pc_598a3, %dec_label_pc_59880
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %27 = mul i64 %indvars.iv14.reload, 4
  %28 = add i64 %27, %16
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_598db, label %dec_label_pc_598a3

dec_label_pc_598cc:                               ; preds = %dec_label_pc_5987a
  call void @printLine(ptr @global_var_b87a0)
  br label %dec_label_pc_598db

dec_label_pc_598db:                               ; preds = %dec_label_pc_598a3, %dec_label_pc_598cc
  call void @free(ptr %15)
  br label %dec_label_pc_599ab

dec_label_pc_598ec:                               ; preds = %dec_label_pc_5981c
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br i1 %18, label %dec_label_pc_59914, label %dec_label_pc_59901

dec_label_pc_59901:                               ; preds = %dec_label_pc_598ec
  call void @exit(i32 -1)
  unreachable

dec_label_pc_59914:                               ; preds = %dec_label_pc_598ec, %dec_label_pc_59914
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %31 = mul i64 %indvars.iv11.reload, 4
  %32 = add i64 %31, %16
  %33 = inttoptr i64 %32 to ptr
  store i32 0, ptr %33, align 4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_59938, label %dec_label_pc_59914

dec_label_pc_59938:                               ; preds = %dec_label_pc_59914
  %34 = icmp ugt i32 %storemerge5.reload, 9
  br i1 %34, label %dec_label_pc_59990, label %dec_label_pc_59944

dec_label_pc_59944:                               ; preds = %dec_label_pc_59938
  %35 = sext i32 %storemerge5.reload to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %36, %16
  %38 = inttoptr i64 %37 to ptr
  store i32 1, ptr %38, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_59967

dec_label_pc_59967:                               ; preds = %dec_label_pc_59967, %dec_label_pc_59944
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %39 = mul i64 %indvars.iv.reload, 4
  %40 = add i64 %39, %16
  %41 = inttoptr i64 %40 to ptr
  %42 = load i32, ptr %41, align 4
  call void @printIntLine(i32 %42)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5999f, label %dec_label_pc_59967

dec_label_pc_59990:                               ; preds = %dec_label_pc_59938
  call void @printLine(ptr @global_var_b87c0)
  br label %dec_label_pc_5999f

dec_label_pc_5999f:                               ; preds = %dec_label_pc_59967, %dec_label_pc_59990
  call void @free(ptr %15)
  br label %dec_label_pc_599ab

dec_label_pc_599ab:                               ; preds = %dec_label_pc_5999f, %dec_label_pc_598db
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

