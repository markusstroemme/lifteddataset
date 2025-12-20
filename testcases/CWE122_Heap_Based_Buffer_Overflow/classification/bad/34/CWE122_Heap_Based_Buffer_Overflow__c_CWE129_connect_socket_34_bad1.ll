@global_var_b4be8 = external constant [10 x i8]
@global_var_b4bf8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_20fe0:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %stack_var_-84.05.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-84.05.reg2mem, align 4
  br i1 %2, label %dec_label_pc_210d7, label %dec_label_pc_2102a

dec_label_pc_2102a:                               ; preds = %dec_label_pc_20fe0
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4be8)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_210cd, label %dec_label_pc_21081

dec_label_pc_21081:                               ; preds = %dec_label_pc_2102a
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_210cd, label %dec_label_pc_210a8

dec_label_pc_210a8:                               ; preds = %dec_label_pc_21081
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_210cd

dec_label_pc_210cd:                               ; preds = %dec_label_pc_2102a, %dec_label_pc_210a8, %dec_label_pc_21081
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.05.reg2mem, align 4
  br label %dec_label_pc_210d7

dec_label_pc_210d7:                               ; preds = %dec_label_pc_20fe0, %dec_label_pc_210cd
  %stack_var_-84.05.reload = load i32, ptr %stack_var_-84.05.reg2mem, align 4
  %20 = call ptr @malloc(i32 40)
  %21 = ptrtoint ptr %20 to i64
  %22 = icmp eq ptr %20, null
  %23 = icmp eq i1 %22, false
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %23, label %dec_label_pc_2110b, label %dec_label_pc_210f8

dec_label_pc_210f8:                               ; preds = %dec_label_pc_210d7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2110b:                               ; preds = %dec_label_pc_210d7, %dec_label_pc_2110b
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %24 = mul i64 %indvars.iv8.reload, 4
  %25 = add i64 %24, %21
  %26 = inttoptr i64 %25 to ptr
  store i32 0, ptr %26, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_2112f, label %dec_label_pc_2110b

dec_label_pc_2112f:                               ; preds = %dec_label_pc_2110b
  %27 = icmp slt i32 %stack_var_-84.05.reload, 0
  br i1 %27, label %dec_label_pc_21181, label %dec_label_pc_21135

dec_label_pc_21135:                               ; preds = %dec_label_pc_2112f
  %28 = sext i32 %stack_var_-84.05.reload to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %29, %21
  %31 = inttoptr i64 %30 to ptr
  store i32 1, ptr %31, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_21158

dec_label_pc_21158:                               ; preds = %dec_label_pc_21158, %dec_label_pc_21135
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %32 = mul i64 %indvars.iv.reload, 4
  %33 = add i64 %32, %21
  %34 = inttoptr i64 %33 to ptr
  %35 = load i32, ptr %34, align 4
  call void @printIntLine(i32 %35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_21190, label %dec_label_pc_21158

dec_label_pc_21181:                               ; preds = %dec_label_pc_2112f
  call void @printLine(ptr @global_var_b4bf8)
  br label %dec_label_pc_21190

dec_label_pc_21190:                               ; preds = %dec_label_pc_21158, %dec_label_pc_21181
  call void @free(ptr %20)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  br i1 %37, label %dec_label_pc_211b1, label %dec_label_pc_211ac

dec_label_pc_211ac:                               ; preds = %dec_label_pc_21190
  call void @__stack_chk_fail()
  br label %dec_label_pc_211b1

dec_label_pc_211b1:                               ; preds = %dec_label_pc_211ac, %dec_label_pc_21190
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

