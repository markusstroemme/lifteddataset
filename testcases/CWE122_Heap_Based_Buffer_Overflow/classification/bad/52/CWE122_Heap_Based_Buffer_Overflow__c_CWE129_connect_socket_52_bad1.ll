@global_var_b4dec = external constant [10 x i8]
@global_var_b4df8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_22d3a:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_22e31, label %dec_label_pc_22d84

dec_label_pc_22d84:                               ; preds = %dec_label_pc_22d3a
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4dec)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_22e27, label %dec_label_pc_22ddb

dec_label_pc_22ddb:                               ; preds = %dec_label_pc_22d84
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_22e27, label %dec_label_pc_22e02

dec_label_pc_22e02:                               ; preds = %dec_label_pc_22ddb
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_22e27

dec_label_pc_22e27:                               ; preds = %dec_label_pc_22d84, %dec_label_pc_22e02, %dec_label_pc_22ddb
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_22e31

dec_label_pc_22e31:                               ; preds = %dec_label_pc_22d3a, %dec_label_pc_22e27
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  call void @anon1(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_22e50, label %dec_label_pc_22e4b

dec_label_pc_22e4b:                               ; preds = %dec_label_pc_22e31
  call void @__stack_chk_fail()
  br label %dec_label_pc_22e50

dec_label_pc_22e50:                               ; preds = %dec_label_pc_22e4b, %dec_label_pc_22e31
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_22fb0:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_23004:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2303b, label %dec_label_pc_23028

dec_label_pc_23028:                               ; preds = %dec_label_pc_23004
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2303b:                               ; preds = %dec_label_pc_23004, %dec_label_pc_2303b
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2305f, label %dec_label_pc_2303b

dec_label_pc_2305f:                               ; preds = %dec_label_pc_2303b
  %7 = icmp slt i32 %data, 0
  br i1 %7, label %dec_label_pc_230b1, label %dec_label_pc_23065

dec_label_pc_23065:                               ; preds = %dec_label_pc_2305f
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_23088

dec_label_pc_23088:                               ; preds = %dec_label_pc_23088, %dec_label_pc_23065
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_230c0, label %dec_label_pc_23088

dec_label_pc_230b1:                               ; preds = %dec_label_pc_2305f
  call void @printLine(ptr @global_var_b4df8)
  br label %dec_label_pc_230c0

dec_label_pc_230c0:                               ; preds = %dec_label_pc_23088, %dec_label_pc_230b1
  call void @free(ptr %0)
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

