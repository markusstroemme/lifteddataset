@global_var_b87c0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_599b2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %indvars.iv20.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge6.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = call ptr @malloc(i32 40)
  %15 = ptrtoint ptr %14 to i64
  %16 = icmp eq ptr %14, null
  %17 = icmp eq i1 %16, false
  br i1 %13, label %dec_label_pc_59b3e, label %dec_label_pc_59a7a

dec_label_pc_59a7a:                               ; preds = %dec_label_pc_599b2
  store i64 0, ptr %indvars.iv20.reg2mem, align 8
  br i1 %17, label %dec_label_pc_59aa2, label %dec_label_pc_59a8f

dec_label_pc_59a8f:                               ; preds = %dec_label_pc_59a7a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_59aa2:                               ; preds = %dec_label_pc_59a7a, %dec_label_pc_59aa2
  %indvars.iv20.reload = load i64, ptr %indvars.iv20.reg2mem, align 8
  %18 = mul i64 %indvars.iv20.reload, 4
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20.reload, 1
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 10
  store i64 %indvars.iv.next21, ptr %indvars.iv20.reg2mem, align 8
  br i1 %exitcond22, label %dec_label_pc_59ac6, label %dec_label_pc_59aa2

dec_label_pc_59ac6:                               ; preds = %dec_label_pc_59aa2
  %21 = icmp ugt i32 %storemerge6.in, 9
  br i1 %21, label %dec_label_pc_59b1e, label %dec_label_pc_59ad2

dec_label_pc_59ad2:                               ; preds = %dec_label_pc_59ac6
  %22 = sext i32 %storemerge6.in to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %23, %15
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  br label %dec_label_pc_59af5

dec_label_pc_59af5:                               ; preds = %dec_label_pc_59af5, %dec_label_pc_59ad2
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %26 = mul i64 %indvars.iv17.reload, 4
  %27 = add i64 %26, %15
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_59b2d, label %dec_label_pc_59af5

dec_label_pc_59b1e:                               ; preds = %dec_label_pc_59ac6
  call void @printLine(ptr @global_var_b87c0)
  br label %dec_label_pc_59b2d

dec_label_pc_59b2d:                               ; preds = %dec_label_pc_59af5, %dec_label_pc_59b1e
  call void @free(ptr %14)
  br label %dec_label_pc_59bfd

dec_label_pc_59b3e:                               ; preds = %dec_label_pc_599b2
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br i1 %17, label %dec_label_pc_59b66, label %dec_label_pc_59b53

dec_label_pc_59b53:                               ; preds = %dec_label_pc_59b3e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_59b66:                               ; preds = %dec_label_pc_59b3e, %dec_label_pc_59b66
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %30 = mul i64 %indvars.iv14.reload, 4
  %31 = add i64 %30, %15
  %32 = inttoptr i64 %31 to ptr
  store i32 0, ptr %32, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_59b8a, label %dec_label_pc_59b66

dec_label_pc_59b8a:                               ; preds = %dec_label_pc_59b66
  %33 = icmp ugt i32 %storemerge6.in, 9
  br i1 %33, label %dec_label_pc_59be2, label %dec_label_pc_59b96

dec_label_pc_59b96:                               ; preds = %dec_label_pc_59b8a
  %34 = sext i32 %storemerge6.in to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %35, %15
  %37 = inttoptr i64 %36 to ptr
  store i32 1, ptr %37, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_59bb9

dec_label_pc_59bb9:                               ; preds = %dec_label_pc_59bb9, %dec_label_pc_59b96
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %38 = mul i64 %indvars.iv.reload, 4
  %39 = add i64 %38, %15
  %40 = inttoptr i64 %39 to ptr
  %41 = load i32, ptr %40, align 4
  call void @printIntLine(i32 %41)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_59bf1, label %dec_label_pc_59bb9

dec_label_pc_59be2:                               ; preds = %dec_label_pc_59b8a
  call void @printLine(ptr @global_var_b87c0)
  br label %dec_label_pc_59bf1

dec_label_pc_59bf1:                               ; preds = %dec_label_pc_59bb9, %dec_label_pc_59be2
  call void @free(ptr %14)
  br label %dec_label_pc_59bfd

dec_label_pc_59bfd:                               ; preds = %dec_label_pc_59bf1, %dec_label_pc_59b2d
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

