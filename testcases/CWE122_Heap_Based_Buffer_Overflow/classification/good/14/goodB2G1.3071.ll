@global_var_b4898 = external constant [10 x i8]
@global_var_b48c8 = external constant [21 x i8]
@global_var_b48e0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1dbf5:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-80.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1dcfb, label %dec_label_pc_1dc26

dec_label_pc_1dc26:                               ; preds = %dec_label_pc_1dbf5
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-80.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_1dcfbthread-pre-split, label %dec_label_pc_1dc4e

dec_label_pc_1dc4e:                               ; preds = %dec_label_pc_1dc26
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4898)
  %8 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1dcf1, label %dec_label_pc_1dca5

dec_label_pc_1dca5:                               ; preds = %dec_label_pc_1dc4e
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_1dcf1, label %dec_label_pc_1dccc

dec_label_pc_1dccc:                               ; preds = %dec_label_pc_1dca5
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1dcf1

dec_label_pc_1dcf1:                               ; preds = %dec_label_pc_1dc4e, %dec_label_pc_1dccc, %dec_label_pc_1dca5
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %4)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.ph.reg2mem, align 4
  br label %dec_label_pc_1dcfbthread-pre-split

dec_label_pc_1dcfbthread-pre-split:               ; preds = %dec_label_pc_1dcf1, %dec_label_pc_1dc26
  %stack_var_-80.1.ph.reload = load i32, ptr %stack_var_-80.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_ec074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-80.1.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  br label %dec_label_pc_1dcfb

dec_label_pc_1dcfb:                               ; preds = %dec_label_pc_1dcfbthread-pre-split, %dec_label_pc_1dbf5
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = icmp eq i32 %.reload, 5
  br i1 %23, label %dec_label_pc_1dd1a, label %dec_label_pc_1dd06

dec_label_pc_1dd06:                               ; preds = %dec_label_pc_1dcfb
  call void @printLine(ptr @global_var_b48c8)
  br label %dec_label_pc_1ddd9

dec_label_pc_1dd1a:                               ; preds = %dec_label_pc_1dcfb
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %24 = call ptr @malloc(i32 40)
  %25 = ptrtoint ptr %24 to i64
  %26 = icmp eq ptr %24, null
  %27 = icmp eq i1 %26, false
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %27, label %dec_label_pc_1dd42, label %dec_label_pc_1dd2f

dec_label_pc_1dd2f:                               ; preds = %dec_label_pc_1dd1a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1dd42:                               ; preds = %dec_label_pc_1dd1a, %dec_label_pc_1dd42
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %28 = mul i64 %indvars.iv8.reload, 4
  %29 = add i64 %28, %25
  %30 = inttoptr i64 %29 to ptr
  store i32 0, ptr %30, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_1dd66, label %dec_label_pc_1dd42

dec_label_pc_1dd66:                               ; preds = %dec_label_pc_1dd42
  %31 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %31, label %dec_label_pc_1ddbe, label %dec_label_pc_1dd72

dec_label_pc_1dd72:                               ; preds = %dec_label_pc_1dd66
  %32 = sext i32 %stack_var_-80.1.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %33, %25
  %35 = inttoptr i64 %34 to ptr
  store i32 1, ptr %35, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1dd95

dec_label_pc_1dd95:                               ; preds = %dec_label_pc_1dd95, %dec_label_pc_1dd72
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %36 = mul i64 %indvars.iv.reload, 4
  %37 = add i64 %36, %25
  %38 = inttoptr i64 %37 to ptr
  %39 = load i32, ptr %38, align 4
  call void @printIntLine(i32 %39)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ddcd, label %dec_label_pc_1dd95

dec_label_pc_1ddbe:                               ; preds = %dec_label_pc_1dd66
  call void @printLine(ptr @global_var_b48e0)
  br label %dec_label_pc_1ddcd

dec_label_pc_1ddcd:                               ; preds = %dec_label_pc_1dd95, %dec_label_pc_1ddbe
  call void @free(ptr %24)
  br label %dec_label_pc_1ddd9

dec_label_pc_1ddd9:                               ; preds = %dec_label_pc_1ddcd, %dec_label_pc_1dd06
  %40 = call i64 @__readfsqword(i64 40)
  %41 = icmp eq i64 %0, %40
  br i1 %41, label %dec_label_pc_1ddee, label %dec_label_pc_1dde9

dec_label_pc_1dde9:                               ; preds = %dec_label_pc_1ddd9
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ddee

dec_label_pc_1ddee:                               ; preds = %dec_label_pc_1dde9, %dec_label_pc_1ddd9
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

