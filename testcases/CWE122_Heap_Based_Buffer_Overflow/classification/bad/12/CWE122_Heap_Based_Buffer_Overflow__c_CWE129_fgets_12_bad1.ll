@global_var_b55a8 = external constant [16 x i8]
@global_var_b55b8 = external constant [32 x i8]
@global_var_b55d8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2a335:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %indvars.iv15.reg2mem = alloca i64, align 8
  %stack_var_-60.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-60.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2a3c0, label %dec_label_pc_2a365

dec_label_pc_2a365:                               ; preds = %dec_label_pc_2a335
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_2a3a8, label %dec_label_pc_2a397

dec_label_pc_2a397:                               ; preds = %dec_label_pc_2a365
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a3c0

dec_label_pc_2a3a8:                               ; preds = %dec_label_pc_2a365
  call void @printLine(ptr @global_var_b55a8)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_2a3c0

dec_label_pc_2a3c0:                               ; preds = %dec_label_pc_2a335, %dec_label_pc_2a3a8, %dec_label_pc_2a397
  %stack_var_-60.0.reload = load i32, ptr %stack_var_-60.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = call ptr @malloc(i32 40)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  br i1 %9, label %dec_label_pc_2a490, label %dec_label_pc_2a3d2

dec_label_pc_2a3d2:                               ; preds = %dec_label_pc_2a3c0
  store i64 0, ptr %indvars.iv15.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2a3fa, label %dec_label_pc_2a3e7

dec_label_pc_2a3e7:                               ; preds = %dec_label_pc_2a3d2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a3fa:                               ; preds = %dec_label_pc_2a3d2, %dec_label_pc_2a3fa
  %indvars.iv15.reload = load i64, ptr %indvars.iv15.reg2mem, align 8
  %14 = mul i64 %indvars.iv15.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 10
  store i64 %indvars.iv.next16, ptr %indvars.iv15.reg2mem, align 8
  br i1 %exitcond17, label %dec_label_pc_2a41e, label %dec_label_pc_2a3fa

dec_label_pc_2a41e:                               ; preds = %dec_label_pc_2a3fa
  %17 = icmp slt i32 %stack_var_-60.0.reload, 0
  br i1 %17, label %dec_label_pc_2a470, label %dec_label_pc_2a424

dec_label_pc_2a424:                               ; preds = %dec_label_pc_2a41e
  %18 = sext i32 %stack_var_-60.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %11
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br label %dec_label_pc_2a447

dec_label_pc_2a447:                               ; preds = %dec_label_pc_2a447, %dec_label_pc_2a424
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %22 = mul i64 %indvars.iv12.reload, 4
  %23 = add i64 %22, %11
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_2a47f, label %dec_label_pc_2a447

dec_label_pc_2a470:                               ; preds = %dec_label_pc_2a41e
  call void @printLine(ptr @global_var_b55b8)
  br label %dec_label_pc_2a47f

dec_label_pc_2a47f:                               ; preds = %dec_label_pc_2a447, %dec_label_pc_2a470
  call void @free(ptr %10)
  br label %dec_label_pc_2a54f

dec_label_pc_2a490:                               ; preds = %dec_label_pc_2a3c0
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2a4b8, label %dec_label_pc_2a4a5

dec_label_pc_2a4a5:                               ; preds = %dec_label_pc_2a490
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a4b8:                               ; preds = %dec_label_pc_2a490, %dec_label_pc_2a4b8
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %26 = mul i64 %indvars.iv9.reload, 4
  %27 = add i64 %26, %11
  %28 = inttoptr i64 %27 to ptr
  store i32 0, ptr %28, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_2a4dc, label %dec_label_pc_2a4b8

dec_label_pc_2a4dc:                               ; preds = %dec_label_pc_2a4b8
  %29 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %29, label %dec_label_pc_2a534, label %dec_label_pc_2a4e8

dec_label_pc_2a4e8:                               ; preds = %dec_label_pc_2a4dc
  %30 = sext i32 %stack_var_-60.0.reload to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %31, %11
  %33 = inttoptr i64 %32 to ptr
  store i32 1, ptr %33, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2a50b

dec_label_pc_2a50b:                               ; preds = %dec_label_pc_2a50b, %dec_label_pc_2a4e8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %34 = mul i64 %indvars.iv.reload, 4
  %35 = add i64 %34, %11
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 4
  call void @printIntLine(i32 %37)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2a543, label %dec_label_pc_2a50b

dec_label_pc_2a534:                               ; preds = %dec_label_pc_2a4dc
  call void @printLine(ptr @global_var_b55d8)
  br label %dec_label_pc_2a543

dec_label_pc_2a543:                               ; preds = %dec_label_pc_2a50b, %dec_label_pc_2a534
  call void @free(ptr %10)
  br label %dec_label_pc_2a54f

dec_label_pc_2a54f:                               ; preds = %dec_label_pc_2a543, %dec_label_pc_2a47f
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %0, %38
  br i1 %39, label %dec_label_pc_2a564, label %dec_label_pc_2a55f

dec_label_pc_2a55f:                               ; preds = %dec_label_pc_2a54f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a564

dec_label_pc_2a564:                               ; preds = %dec_label_pc_2a55f, %dec_label_pc_2a54f
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

