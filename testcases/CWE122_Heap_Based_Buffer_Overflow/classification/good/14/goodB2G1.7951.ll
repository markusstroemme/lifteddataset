@global_var_b7c88 = external constant [21 x i8]
@global_var_b7ca0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4c769:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-84.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_4c8b2, label %dec_label_pc_4c79a

dec_label_pc_4c79a:                               ; preds = %dec_label_pc_4c769
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_4c8b2thread-pre-split, label %dec_label_pc_4c7c9

dec_label_pc_4c7c9:                               ; preds = %dec_label_pc_4c79a
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_4c8a2.thread9, label %dec_label_pc_4c815

dec_label_pc_4c815:                               ; preds = %dec_label_pc_4c7c9
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_4c8a2.thread9, label %dec_label_pc_4c829

dec_label_pc_4c829:                               ; preds = %dec_label_pc_4c815
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_4c8a2.thread9, label %dec_label_pc_4c846

dec_label_pc_4c846:                               ; preds = %dec_label_pc_4c829
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_4c8a8, label %dec_label_pc_4c86d

dec_label_pc_4c86d:                               ; preds = %dec_label_pc_4c846
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4c8a8

dec_label_pc_4c8a2.thread9:                       ; preds = %dec_label_pc_4c829, %dec_label_pc_4c815, %dec_label_pc_4c7c9
  %25 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br label %dec_label_pc_4c8b2thread-pre-split

dec_label_pc_4c8a8:                               ; preds = %dec_label_pc_4c86d, %dec_label_pc_4c846
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  %27 = call i32 @close(i32 %13)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br label %dec_label_pc_4c8b2thread-pre-split

dec_label_pc_4c8b2thread-pre-split:               ; preds = %dec_label_pc_4c79a, %dec_label_pc_4c8a8, %dec_label_pc_4c8a2.thread9
  %stack_var_-84.1.ph.reload = load i32, ptr %stack_var_-84.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_ec074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-84.1.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  br label %dec_label_pc_4c8b2

dec_label_pc_4c8b2:                               ; preds = %dec_label_pc_4c8b2thread-pre-split, %dec_label_pc_4c769
  %.reload = load i32, ptr %.reg2mem, align 4
  %28 = icmp eq i32 %.reload, 5
  br i1 %28, label %dec_label_pc_4c8d1, label %dec_label_pc_4c8bd

dec_label_pc_4c8bd:                               ; preds = %dec_label_pc_4c8b2
  call void @printLine(ptr @global_var_b7c88)
  br label %dec_label_pc_4c990

dec_label_pc_4c8d1:                               ; preds = %dec_label_pc_4c8b2
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %29 = call ptr @malloc(i32 40)
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq ptr %29, null
  %32 = icmp eq i1 %31, false
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br i1 %32, label %dec_label_pc_4c8f9, label %dec_label_pc_4c8e6

dec_label_pc_4c8e6:                               ; preds = %dec_label_pc_4c8d1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4c8f9:                               ; preds = %dec_label_pc_4c8d1, %dec_label_pc_4c8f9
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %33 = mul i64 %indvars.iv12.reload, 4
  %34 = add i64 %33, %30
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_4c91d, label %dec_label_pc_4c8f9

dec_label_pc_4c91d:                               ; preds = %dec_label_pc_4c8f9
  %36 = icmp ugt i32 %stack_var_-84.1.reload, 9
  br i1 %36, label %dec_label_pc_4c975, label %dec_label_pc_4c929

dec_label_pc_4c929:                               ; preds = %dec_label_pc_4c91d
  %37 = sext i32 %stack_var_-84.1.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %38, %30
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4c94c

dec_label_pc_4c94c:                               ; preds = %dec_label_pc_4c94c, %dec_label_pc_4c929
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %41 = mul i64 %indvars.iv.reload, 4
  %42 = add i64 %41, %30
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4c984, label %dec_label_pc_4c94c

dec_label_pc_4c975:                               ; preds = %dec_label_pc_4c91d
  call void @printLine(ptr @global_var_b7ca0)
  br label %dec_label_pc_4c984

dec_label_pc_4c984:                               ; preds = %dec_label_pc_4c94c, %dec_label_pc_4c975
  call void @free(ptr %29)
  br label %dec_label_pc_4c990

dec_label_pc_4c990:                               ; preds = %dec_label_pc_4c984, %dec_label_pc_4c8bd
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %0, %45
  br i1 %46, label %dec_label_pc_4c9a5, label %dec_label_pc_4c9a0

dec_label_pc_4c9a0:                               ; preds = %dec_label_pc_4c990
  call void @__stack_chk_fail()
  br label %dec_label_pc_4c9a5

dec_label_pc_4c9a5:                               ; preds = %dec_label_pc_4c9a0, %dec_label_pc_4c990
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

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

