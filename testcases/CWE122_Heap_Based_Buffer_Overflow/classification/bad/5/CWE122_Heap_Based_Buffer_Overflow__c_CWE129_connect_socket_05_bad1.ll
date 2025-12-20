@global_var_b44c0 = external constant [10 x i8]
@global_var_b44d0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16
@global_var_ec020 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1923f:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-80.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1940b, label %dec_label_pc_1926f

dec_label_pc_1926f:                               ; preds = %dec_label_pc_1923f
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-80.1.ph.reg2mem, align 4
  br i1 %4, label %dec_label_pc_19344, label %dec_label_pc_19297

dec_label_pc_19297:                               ; preds = %dec_label_pc_1926f
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_b44c0)
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1933a, label %dec_label_pc_192ee

dec_label_pc_192ee:                               ; preds = %dec_label_pc_19297
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1933a, label %dec_label_pc_19315

dec_label_pc_19315:                               ; preds = %dec_label_pc_192ee
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1933a

dec_label_pc_1933a:                               ; preds = %dec_label_pc_19297, %dec_label_pc_19315, %dec_label_pc_192ee
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.ph.reg2mem, align 4
  br label %dec_label_pc_19344

dec_label_pc_19344:                               ; preds = %dec_label_pc_1926f, %dec_label_pc_1933a
  %.pr = load i32, ptr @global_var_ec020, align 4
  %22 = icmp eq i32 %.pr, 0
  br i1 %22, label %dec_label_pc_1940b, label %dec_label_pc_19352

dec_label_pc_19352:                               ; preds = %dec_label_pc_19344
  %stack_var_-80.1.ph.reload = load i32, ptr %stack_var_-80.1.ph.reg2mem, align 4
  %23 = call ptr @malloc(i32 40)
  %24 = ptrtoint ptr %23 to i64
  %25 = icmp eq ptr %23, null
  %26 = icmp eq i1 %25, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %26, label %dec_label_pc_1937a, label %dec_label_pc_19367

dec_label_pc_19367:                               ; preds = %dec_label_pc_19352
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1937a:                               ; preds = %dec_label_pc_19352, %dec_label_pc_1937a
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %27 = mul i64 %indvars.iv6.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  store i32 0, ptr %29, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_1939e, label %dec_label_pc_1937a

dec_label_pc_1939e:                               ; preds = %dec_label_pc_1937a
  %30 = icmp slt i32 %stack_var_-80.1.ph.reload, 0
  br i1 %30, label %dec_label_pc_193f0, label %dec_label_pc_193a4

dec_label_pc_193a4:                               ; preds = %dec_label_pc_1939e
  %31 = sext i32 %stack_var_-80.1.ph.reload to i64
  %32 = mul i64 %31, 4
  %33 = add i64 %32, %24
  %34 = inttoptr i64 %33 to ptr
  store i32 1, ptr %34, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_193c7

dec_label_pc_193c7:                               ; preds = %dec_label_pc_193c7, %dec_label_pc_193a4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %35 = mul i64 %indvars.iv.reload, 4
  %36 = add i64 %35, %24
  %37 = inttoptr i64 %36 to ptr
  %38 = load i32, ptr %37, align 4
  call void @printIntLine(i32 %38)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_193ff, label %dec_label_pc_193c7

dec_label_pc_193f0:                               ; preds = %dec_label_pc_1939e
  call void @printLine(ptr @global_var_b44d0)
  br label %dec_label_pc_193ff

dec_label_pc_193ff:                               ; preds = %dec_label_pc_193c7, %dec_label_pc_193f0
  call void @free(ptr %23)
  br label %dec_label_pc_1940b

dec_label_pc_1940b:                               ; preds = %dec_label_pc_1923f, %dec_label_pc_193ff, %dec_label_pc_19344
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %0, %39
  br i1 %40, label %dec_label_pc_19420, label %dec_label_pc_1941b

dec_label_pc_1941b:                               ; preds = %dec_label_pc_1940b
  call void @__stack_chk_fail()
  br label %dec_label_pc_19420

dec_label_pc_19420:                               ; preds = %dec_label_pc_1941b, %dec_label_pc_1940b
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

