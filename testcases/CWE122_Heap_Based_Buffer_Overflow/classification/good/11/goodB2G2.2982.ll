@global_var_b4760 = external constant [10 x i8]
@global_var_b47a8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1c5d9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1c6e2, label %dec_label_pc_1c60d

dec_label_pc_1c60d:                               ; preds = %dec_label_pc_1c5d9
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_1c6e2, label %dec_label_pc_1c635

dec_label_pc_1c635:                               ; preds = %dec_label_pc_1c60d
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_b4760)
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1c6d8, label %dec_label_pc_1c68c

dec_label_pc_1c68c:                               ; preds = %dec_label_pc_1c635
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1c6d8, label %dec_label_pc_1c6b3

dec_label_pc_1c6b3:                               ; preds = %dec_label_pc_1c68c
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1c6d8

dec_label_pc_1c6d8:                               ; preds = %dec_label_pc_1c635, %dec_label_pc_1c6b3, %dec_label_pc_1c68c
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  br label %dec_label_pc_1c6e2

dec_label_pc_1c6e2:                               ; preds = %dec_label_pc_1c60d, %dec_label_pc_1c6d8, %dec_label_pc_1c5d9
  %22 = call i32 @globalReturnsTrue()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_1c7b3, label %dec_label_pc_1c6f4

dec_label_pc_1c6f4:                               ; preds = %dec_label_pc_1c6e2
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %24 = call ptr @malloc(i32 40)
  %25 = ptrtoint ptr %24 to i64
  %26 = icmp eq ptr %24, null
  %27 = icmp eq i1 %26, false
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %27, label %dec_label_pc_1c71c, label %dec_label_pc_1c709

dec_label_pc_1c709:                               ; preds = %dec_label_pc_1c6f4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1c71c:                               ; preds = %dec_label_pc_1c6f4, %dec_label_pc_1c71c
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %28 = mul i64 %indvars.iv8.reload, 4
  %29 = add i64 %28, %25
  %30 = inttoptr i64 %29 to ptr
  store i32 0, ptr %30, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_1c740, label %dec_label_pc_1c71c

dec_label_pc_1c740:                               ; preds = %dec_label_pc_1c71c
  %31 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %31, label %dec_label_pc_1c798, label %dec_label_pc_1c74c

dec_label_pc_1c74c:                               ; preds = %dec_label_pc_1c740
  %32 = sext i32 %stack_var_-80.1.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %33, %25
  %35 = inttoptr i64 %34 to ptr
  store i32 1, ptr %35, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1c76f

dec_label_pc_1c76f:                               ; preds = %dec_label_pc_1c76f, %dec_label_pc_1c74c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %36 = mul i64 %indvars.iv.reload, 4
  %37 = add i64 %36, %25
  %38 = inttoptr i64 %37 to ptr
  %39 = load i32, ptr %38, align 4
  call void @printIntLine(i32 %39)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c7a7, label %dec_label_pc_1c76f

dec_label_pc_1c798:                               ; preds = %dec_label_pc_1c740
  call void @printLine(ptr @global_var_b47a8)
  br label %dec_label_pc_1c7a7

dec_label_pc_1c7a7:                               ; preds = %dec_label_pc_1c76f, %dec_label_pc_1c798
  call void @free(ptr %24)
  br label %dec_label_pc_1c7b3

dec_label_pc_1c7b3:                               ; preds = %dec_label_pc_1c7a7, %dec_label_pc_1c6e2
  %40 = call i64 @__readfsqword(i64 40)
  %41 = icmp eq i64 %0, %40
  br i1 %41, label %dec_label_pc_1c7c8, label %dec_label_pc_1c7c3

dec_label_pc_1c7c3:                               ; preds = %dec_label_pc_1c7b3
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c7c8

dec_label_pc_1c7c8:                               ; preds = %dec_label_pc_1c7c3, %dec_label_pc_1c7b3
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a039c:
  ret i32 1
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

