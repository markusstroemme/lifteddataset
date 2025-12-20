@global_var_b4898 = external constant [10 x i8]
@global_var_b48e0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1ddf0:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1def6, label %dec_label_pc_1de21

dec_label_pc_1de21:                               ; preds = %dec_label_pc_1ddf0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_1def6, label %dec_label_pc_1de49

dec_label_pc_1de49:                               ; preds = %dec_label_pc_1de21
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4898)
  %8 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1deec, label %dec_label_pc_1dea0

dec_label_pc_1dea0:                               ; preds = %dec_label_pc_1de49
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_1deec, label %dec_label_pc_1dec7

dec_label_pc_1dec7:                               ; preds = %dec_label_pc_1dea0
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1deec

dec_label_pc_1deec:                               ; preds = %dec_label_pc_1de49, %dec_label_pc_1dec7, %dec_label_pc_1dea0
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %4)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  br label %dec_label_pc_1def6

dec_label_pc_1def6:                               ; preds = %dec_label_pc_1de21, %dec_label_pc_1deec, %dec_label_pc_1ddf0
  %23 = load i32, ptr @global_var_ec074, align 4
  %24 = icmp eq i32 %23, 5
  %25 = icmp eq i1 %24, false
  br i1 %25, label %dec_label_pc_1dfc4, label %dec_label_pc_1df05

dec_label_pc_1df05:                               ; preds = %dec_label_pc_1def6
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %26 = call ptr @malloc(i32 40)
  %27 = ptrtoint ptr %26 to i64
  %28 = icmp eq ptr %26, null
  %29 = icmp eq i1 %28, false
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %29, label %dec_label_pc_1df2d, label %dec_label_pc_1df1a

dec_label_pc_1df1a:                               ; preds = %dec_label_pc_1df05
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1df2d:                               ; preds = %dec_label_pc_1df05, %dec_label_pc_1df2d
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %30 = mul i64 %indvars.iv8.reload, 4
  %31 = add i64 %30, %27
  %32 = inttoptr i64 %31 to ptr
  store i32 0, ptr %32, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_1df51, label %dec_label_pc_1df2d

dec_label_pc_1df51:                               ; preds = %dec_label_pc_1df2d
  %33 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %33, label %dec_label_pc_1dfa9, label %dec_label_pc_1df5d

dec_label_pc_1df5d:                               ; preds = %dec_label_pc_1df51
  %34 = sext i32 %stack_var_-80.1.reload to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %35, %27
  %37 = inttoptr i64 %36 to ptr
  store i32 1, ptr %37, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1df80

dec_label_pc_1df80:                               ; preds = %dec_label_pc_1df80, %dec_label_pc_1df5d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %38 = mul i64 %indvars.iv.reload, 4
  %39 = add i64 %38, %27
  %40 = inttoptr i64 %39 to ptr
  %41 = load i32, ptr %40, align 4
  call void @printIntLine(i32 %41)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1dfb8, label %dec_label_pc_1df80

dec_label_pc_1dfa9:                               ; preds = %dec_label_pc_1df51
  call void @printLine(ptr @global_var_b48e0)
  br label %dec_label_pc_1dfb8

dec_label_pc_1dfb8:                               ; preds = %dec_label_pc_1df80, %dec_label_pc_1dfa9
  call void @free(ptr %26)
  br label %dec_label_pc_1dfc4

dec_label_pc_1dfc4:                               ; preds = %dec_label_pc_1dfb8, %dec_label_pc_1def6
  %42 = call i64 @__readfsqword(i64 40)
  %43 = icmp eq i64 %0, %42
  br i1 %43, label %dec_label_pc_1dfd9, label %dec_label_pc_1dfd4

dec_label_pc_1dfd4:                               ; preds = %dec_label_pc_1dfc4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1dfd9

dec_label_pc_1dfd9:                               ; preds = %dec_label_pc_1dfd4, %dec_label_pc_1dfc4
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

