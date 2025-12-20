@global_var_b7bc0 = external constant [32 x i8]
@global_var_b7be0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4b399:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %indvars.iv19.reg2mem = alloca i64, align 8
  %indvars.iv22.reg2mem = alloca i64, align 8
  %stack_var_-96.1.reg2mem = alloca i32, align 4
  %stack_var_-96.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-96.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4b4ee, label %dec_label_pc_4b3cd

dec_label_pc_4b3cd:                               ; preds = %dec_label_pc_4b399
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-96.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_4b4ee, label %dec_label_pc_4b3fc

dec_label_pc_4b3fc:                               ; preds = %dec_label_pc_4b3cd
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4b4d5.thread11, label %dec_label_pc_4b448

dec_label_pc_4b448:                               ; preds = %dec_label_pc_4b3fc
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4b4d5.thread11, label %dec_label_pc_4b45c

dec_label_pc_4b45c:                               ; preds = %dec_label_pc_4b448
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_4b4d5.thread11, label %dec_label_pc_4b479

dec_label_pc_4b479:                               ; preds = %dec_label_pc_4b45c
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 -1, ptr %stack_var_-96.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_4b4db, label %dec_label_pc_4b4a0

dec_label_pc_4b4a0:                               ; preds = %dec_label_pc_4b479
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-96.0.ph.reg2mem, align 4
  br label %dec_label_pc_4b4db

dec_label_pc_4b4d5.thread11:                      ; preds = %dec_label_pc_4b45c, %dec_label_pc_4b448, %dec_label_pc_4b3fc
  %24 = call i32 @close(i32 %3)
  store i32 -1, ptr %stack_var_-96.1.reg2mem, align 4
  br label %dec_label_pc_4b4ee

dec_label_pc_4b4db:                               ; preds = %dec_label_pc_4b4a0, %dec_label_pc_4b479
  %stack_var_-96.0.ph.reload = load i32, ptr %stack_var_-96.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-96.0.ph.reload, ptr %stack_var_-96.1.reg2mem, align 4
  br label %dec_label_pc_4b4ee

dec_label_pc_4b4ee:                               ; preds = %dec_label_pc_4b3cd, %dec_label_pc_4b4d5.thread11, %dec_label_pc_4b399, %dec_label_pc_4b4db
  %stack_var_-96.1.reload = load i32, ptr %stack_var_-96.1.reg2mem, align 4
  %27 = call i32 @globalReturnsTrueOrFalse()
  %28 = icmp eq i32 %27, 0
  %29 = call ptr @malloc(i32 40)
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq ptr %29, null
  %32 = icmp eq i1 %31, false
  br i1 %28, label %dec_label_pc_4b5be, label %dec_label_pc_4b500

dec_label_pc_4b500:                               ; preds = %dec_label_pc_4b4ee
  store i64 0, ptr %indvars.iv22.reg2mem, align 8
  br i1 %32, label %dec_label_pc_4b528, label %dec_label_pc_4b515

dec_label_pc_4b515:                               ; preds = %dec_label_pc_4b500
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4b528:                               ; preds = %dec_label_pc_4b500, %dec_label_pc_4b528
  %indvars.iv22.reload = load i64, ptr %indvars.iv22.reg2mem, align 8
  %33 = mul i64 %indvars.iv22.reload, 4
  %34 = add i64 %33, %30
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22.reload, 1
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 10
  store i64 %indvars.iv.next23, ptr %indvars.iv22.reg2mem, align 8
  br i1 %exitcond24, label %dec_label_pc_4b54c, label %dec_label_pc_4b528

dec_label_pc_4b54c:                               ; preds = %dec_label_pc_4b528
  %36 = icmp slt i32 %stack_var_-96.1.reload, 0
  br i1 %36, label %dec_label_pc_4b59e, label %dec_label_pc_4b552

dec_label_pc_4b552:                               ; preds = %dec_label_pc_4b54c
  %37 = sext i32 %stack_var_-96.1.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %38, %30
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv19.reg2mem, align 8
  br label %dec_label_pc_4b575

dec_label_pc_4b575:                               ; preds = %dec_label_pc_4b575, %dec_label_pc_4b552
  %indvars.iv19.reload = load i64, ptr %indvars.iv19.reg2mem, align 8
  %41 = mul i64 %indvars.iv19.reload, 4
  %42 = add i64 %41, %30
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19.reload, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 10
  store i64 %indvars.iv.next20, ptr %indvars.iv19.reg2mem, align 8
  br i1 %exitcond21, label %dec_label_pc_4b5ad, label %dec_label_pc_4b575

dec_label_pc_4b59e:                               ; preds = %dec_label_pc_4b54c
  call void @printLine(ptr @global_var_b7bc0)
  br label %dec_label_pc_4b5ad

dec_label_pc_4b5ad:                               ; preds = %dec_label_pc_4b575, %dec_label_pc_4b59e
  call void @free(ptr %29)
  br label %dec_label_pc_4b67d

dec_label_pc_4b5be:                               ; preds = %dec_label_pc_4b4ee
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  br i1 %32, label %dec_label_pc_4b5e6, label %dec_label_pc_4b5d3

dec_label_pc_4b5d3:                               ; preds = %dec_label_pc_4b5be
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4b5e6:                               ; preds = %dec_label_pc_4b5be, %dec_label_pc_4b5e6
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %45 = mul i64 %indvars.iv16.reload, 4
  %46 = add i64 %45, %30
  %47 = inttoptr i64 %46 to ptr
  store i32 0, ptr %47, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_4b60a, label %dec_label_pc_4b5e6

dec_label_pc_4b60a:                               ; preds = %dec_label_pc_4b5e6
  %48 = icmp ugt i32 %stack_var_-96.1.reload, 9
  br i1 %48, label %dec_label_pc_4b662, label %dec_label_pc_4b616

dec_label_pc_4b616:                               ; preds = %dec_label_pc_4b60a
  %49 = sext i32 %stack_var_-96.1.reload to i64
  %50 = mul i64 %49, 4
  %51 = add i64 %50, %30
  %52 = inttoptr i64 %51 to ptr
  store i32 1, ptr %52, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4b639

dec_label_pc_4b639:                               ; preds = %dec_label_pc_4b639, %dec_label_pc_4b616
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %53 = mul i64 %indvars.iv.reload, 4
  %54 = add i64 %53, %30
  %55 = inttoptr i64 %54 to ptr
  %56 = load i32, ptr %55, align 4
  call void @printIntLine(i32 %56)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4b671, label %dec_label_pc_4b639

dec_label_pc_4b662:                               ; preds = %dec_label_pc_4b60a
  call void @printLine(ptr @global_var_b7be0)
  br label %dec_label_pc_4b671

dec_label_pc_4b671:                               ; preds = %dec_label_pc_4b639, %dec_label_pc_4b662
  call void @free(ptr %29)
  br label %dec_label_pc_4b67d

dec_label_pc_4b67d:                               ; preds = %dec_label_pc_4b671, %dec_label_pc_4b5ad
  %57 = call i64 @__readfsqword(i64 40)
  %58 = icmp eq i64 %0, %57
  br i1 %58, label %dec_label_pc_4b692, label %dec_label_pc_4b68d

dec_label_pc_4b68d:                               ; preds = %dec_label_pc_4b67d
  call void @__stack_chk_fail()
  br label %dec_label_pc_4b692

dec_label_pc_4b692:                               ; preds = %dec_label_pc_4b68d, %dec_label_pc_4b67d
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

