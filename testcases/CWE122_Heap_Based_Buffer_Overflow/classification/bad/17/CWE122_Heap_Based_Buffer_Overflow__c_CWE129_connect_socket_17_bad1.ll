@global_var_b49b8 = external constant [10 x i8]
@global_var_b49c8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1ee06:
  %indvars.iv12.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.06.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-80.06.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1eef5, label %dec_label_pc_1ee2e

dec_label_pc_1ee2e:                               ; preds = %dec_label_pc_1ee06
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i32 @inet_addr(ptr @global_var_b49b8)
  %6 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %7 = call i32 @connect(i32 %1, ptr nonnull %3, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_1eed1, label %dec_label_pc_1ee85

dec_label_pc_1ee85:                               ; preds = %dec_label_pc_1ee2e
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1eed1, label %dec_label_pc_1eeac

dec_label_pc_1eeac:                               ; preds = %dec_label_pc_1ee85
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = add i64 %12, -22
  %14 = bitcast ptr %stack_var_-30 to ptr
  %15 = sext i32 %9 to i64
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = call i32 @atoi(ptr nonnull %14)
  store i32 %18, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1eed1

dec_label_pc_1eed1:                               ; preds = %dec_label_pc_1ee2e, %dec_label_pc_1eeac, %dec_label_pc_1ee85
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.06.reg2mem, align 4
  br label %dec_label_pc_1eef5

dec_label_pc_1eef5:                               ; preds = %dec_label_pc_1ee06, %dec_label_pc_1eed1
  %stack_var_-80.06.reload = load i32, ptr %stack_var_-80.06.reg2mem, align 4
  %20 = icmp slt i32 %stack_var_-80.06.reload, 0
  %21 = sext i32 %stack_var_-80.06.reload to i64
  %22 = mul i64 %21, 4
  %23 = call ptr @malloc(i32 40)
  %24 = ptrtoint ptr %23 to i64
  %25 = icmp eq ptr %23, null
  %26 = icmp eq i1 %25, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %26, label %dec_label_pc_1ef1d, label %dec_label_pc_1ef0a

dec_label_pc_1ef0a:                               ; preds = %dec_label_pc_1eef5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1ef1d:                               ; preds = %dec_label_pc_1eef5, %dec_label_pc_1ef1d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  store i32 0, ptr %29, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ef41, label %dec_label_pc_1ef1d

dec_label_pc_1ef41:                               ; preds = %dec_label_pc_1ef1d
  br i1 %20, label %dec_label_pc_1ef93, label %dec_label_pc_1ef47

dec_label_pc_1ef47:                               ; preds = %dec_label_pc_1ef41
  %30 = add i64 %22, %24
  %31 = inttoptr i64 %30 to ptr
  store i32 1, ptr %31, align 4
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br label %dec_label_pc_1ef6a

dec_label_pc_1ef6a:                               ; preds = %dec_label_pc_1ef6a, %dec_label_pc_1ef47
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %32 = mul i64 %indvars.iv12.reload, 4
  %33 = add i64 %32, %24
  %34 = inttoptr i64 %33 to ptr
  %35 = load i32, ptr %34, align 4
  call void @printIntLine(i32 %35)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_1efbc, label %dec_label_pc_1ef6a

dec_label_pc_1ef93:                               ; preds = %dec_label_pc_1ef41
  call void @printLine(ptr @global_var_b49c8)
  br label %dec_label_pc_1efbc

dec_label_pc_1efbc:                               ; preds = %dec_label_pc_1ef6a, %dec_label_pc_1ef93
  call void @free(ptr %23)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  br i1 %37, label %dec_label_pc_1efd1, label %dec_label_pc_1efcc

dec_label_pc_1efcc:                               ; preds = %dec_label_pc_1efbc
  call void @__stack_chk_fail()
  br label %dec_label_pc_1efd1

dec_label_pc_1efd1:                               ; preds = %dec_label_pc_1efcc, %dec_label_pc_1efbc
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

