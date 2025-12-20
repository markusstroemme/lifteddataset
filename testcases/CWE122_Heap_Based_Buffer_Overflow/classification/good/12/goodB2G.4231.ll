@global_var_b55a8 = external constant [16 x i8]
@global_var_b55d8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2a566:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %stack_var_-60.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %2, label %dec_label_pc_2a5ea, label %dec_label_pc_2a596

dec_label_pc_2a596:                               ; preds = %dec_label_pc_2a566
  br i1 %6, label %dec_label_pc_2a5d9, label %dec_label_pc_2a5c8

dec_label_pc_2a5c8:                               ; preds = %dec_label_pc_2a596
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a63c

dec_label_pc_2a5d9:                               ; preds = %dec_label_pc_2a596
  call void @printLine(ptr @global_var_b55a8)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a63c

dec_label_pc_2a5ea:                               ; preds = %dec_label_pc_2a566
  br i1 %6, label %dec_label_pc_2a62d, label %dec_label_pc_2a61c

dec_label_pc_2a61c:                               ; preds = %dec_label_pc_2a5ea
  %8 = call i32 @atoi(ptr nonnull %4)
  store i32 %8, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a63c

dec_label_pc_2a62d:                               ; preds = %dec_label_pc_2a5ea
  call void @printLine(ptr @global_var_b55a8)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a63c

dec_label_pc_2a63c:                               ; preds = %dec_label_pc_2a62d, %dec_label_pc_2a61c, %dec_label_pc_2a5d9, %dec_label_pc_2a5c8
  %stack_var_-60.0.reload = load i32, ptr %stack_var_-60.0.reg2mem, align 4
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  %11 = call ptr @malloc(i32 40)
  %12 = ptrtoint ptr %11 to i64
  %13 = icmp eq ptr %11, null
  %14 = icmp eq i1 %13, false
  br i1 %10, label %dec_label_pc_2a712, label %dec_label_pc_2a64e

dec_label_pc_2a64e:                               ; preds = %dec_label_pc_2a63c
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2a676, label %dec_label_pc_2a663

dec_label_pc_2a663:                               ; preds = %dec_label_pc_2a64e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a676:                               ; preds = %dec_label_pc_2a64e, %dec_label_pc_2a676
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %15 = mul i64 %indvars.iv17.reload, 4
  %16 = add i64 %15, %12
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_2a69a, label %dec_label_pc_2a676

dec_label_pc_2a69a:                               ; preds = %dec_label_pc_2a676
  %18 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %18, label %dec_label_pc_2a6f2, label %dec_label_pc_2a6a6

dec_label_pc_2a6a6:                               ; preds = %dec_label_pc_2a69a
  %19 = sext i32 %stack_var_-60.0.reload to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %12
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_2a6c9

dec_label_pc_2a6c9:                               ; preds = %dec_label_pc_2a6c9, %dec_label_pc_2a6a6
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %23 = mul i64 %indvars.iv14.reload, 4
  %24 = add i64 %23, %12
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_2a701, label %dec_label_pc_2a6c9

dec_label_pc_2a6f2:                               ; preds = %dec_label_pc_2a69a
  call void @printLine(ptr @global_var_b55d8)
  br label %dec_label_pc_2a701

dec_label_pc_2a701:                               ; preds = %dec_label_pc_2a6c9, %dec_label_pc_2a6f2
  call void @free(ptr %11)
  br label %dec_label_pc_2a7d1

dec_label_pc_2a712:                               ; preds = %dec_label_pc_2a63c
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2a73a, label %dec_label_pc_2a727

dec_label_pc_2a727:                               ; preds = %dec_label_pc_2a712
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a73a:                               ; preds = %dec_label_pc_2a712, %dec_label_pc_2a73a
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %27 = mul i64 %indvars.iv11.reload, 4
  %28 = add i64 %27, %12
  %29 = inttoptr i64 %28 to ptr
  store i32 0, ptr %29, align 4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_2a75e, label %dec_label_pc_2a73a

dec_label_pc_2a75e:                               ; preds = %dec_label_pc_2a73a
  %30 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %30, label %dec_label_pc_2a7b6, label %dec_label_pc_2a76a

dec_label_pc_2a76a:                               ; preds = %dec_label_pc_2a75e
  %31 = sext i32 %stack_var_-60.0.reload to i64
  %32 = mul i64 %31, 4
  %33 = add i64 %32, %12
  %34 = inttoptr i64 %33 to ptr
  store i32 1, ptr %34, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2a78d

dec_label_pc_2a78d:                               ; preds = %dec_label_pc_2a78d, %dec_label_pc_2a76a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %35 = mul i64 %indvars.iv.reload, 4
  %36 = add i64 %35, %12
  %37 = inttoptr i64 %36 to ptr
  %38 = load i32, ptr %37, align 4
  call void @printIntLine(i32 %38)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2a7c5, label %dec_label_pc_2a78d

dec_label_pc_2a7b6:                               ; preds = %dec_label_pc_2a75e
  call void @printLine(ptr @global_var_b55d8)
  br label %dec_label_pc_2a7c5

dec_label_pc_2a7c5:                               ; preds = %dec_label_pc_2a78d, %dec_label_pc_2a7b6
  call void @free(ptr %11)
  br label %dec_label_pc_2a7d1

dec_label_pc_2a7d1:                               ; preds = %dec_label_pc_2a7c5, %dec_label_pc_2a701
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %0, %39
  br i1 %40, label %dec_label_pc_2a7e6, label %dec_label_pc_2a7e1

dec_label_pc_2a7e1:                               ; preds = %dec_label_pc_2a7d1
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a7e6

dec_label_pc_2a7e6:                               ; preds = %dec_label_pc_2a7e1, %dec_label_pc_2a7d1
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

