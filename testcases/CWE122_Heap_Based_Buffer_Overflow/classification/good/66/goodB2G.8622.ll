@global_var_b8300 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon1() local_unnamed_addr {
dec_label_pc_54b88:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x i32], align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = insertvalue [5 x i32] undef, i32 %1, 0
  store [5 x i32] %2, ptr %dataArray_-64, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %dataArray_-64, i64 0, i64 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_54cc2, label %dec_label_pc_54bd9

dec_label_pc_54bd9:                               ; preds = %dec_label_pc_54b88
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_54cb2.thread8, label %dec_label_pc_54c25

dec_label_pc_54c25:                               ; preds = %dec_label_pc_54bd9
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_54cb2.thread8, label %dec_label_pc_54c39

dec_label_pc_54c39:                               ; preds = %dec_label_pc_54c25
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_54cb2.thread8, label %dec_label_pc_54c56

dec_label_pc_54c56:                               ; preds = %dec_label_pc_54c39
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %dec_label_pc_54cb2, label %dec_label_pc_54ca2

dec_label_pc_54ca2:                               ; preds = %dec_label_pc_54c56
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  %.pr.pre = load i32, ptr %3, align 4
  %25 = icmp eq i32 %.pr.pre, -1
  br i1 %25, label %dec_label_pc_54cb8, label %dec_label_pc_54cb2.thread7

dec_label_pc_54cb2.thread7:                       ; preds = %dec_label_pc_54ca2
  %26 = call i32 @close(i32 %.pr.pre)
  br label %dec_label_pc_54cb8

dec_label_pc_54cb2.thread8:                       ; preds = %dec_label_pc_54bd9, %dec_label_pc_54c25, %dec_label_pc_54c39
  %27 = call i32 @close(i32 %4)
  br label %dec_label_pc_54cc2

dec_label_pc_54cb2:                               ; preds = %dec_label_pc_54c56
  %28 = call i32 @close(i32 %4)
  br label %dec_label_pc_54cb8

dec_label_pc_54cb8:                               ; preds = %dec_label_pc_54ca2, %dec_label_pc_54cb2, %dec_label_pc_54cb2.thread7
  %29 = call i32 @close(i32 %13)
  br label %dec_label_pc_54cc2

dec_label_pc_54cc2:                               ; preds = %dec_label_pc_54cb2.thread8, %dec_label_pc_54b88, %dec_label_pc_54cb8
  %30 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_54ce9, label %dec_label_pc_54ce4

dec_label_pc_54ce4:                               ; preds = %dec_label_pc_54cc2
  call void @__stack_chk_fail()
  br label %dec_label_pc_54ce9

dec_label_pc_54ce9:                               ; preds = %dec_label_pc_54ce4, %dec_label_pc_54cc2
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_54eb6:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_54ef8, label %dec_label_pc_54ee5

dec_label_pc_54ee5:                               ; preds = %dec_label_pc_54eb6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_54ef8:                               ; preds = %dec_label_pc_54eb6, %dec_label_pc_54ef8
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_54f1c, label %dec_label_pc_54ef8

dec_label_pc_54f1c:                               ; preds = %dec_label_pc_54ef8
  %11 = icmp ugt i32 %3, 9
  br i1 %11, label %dec_label_pc_54f74, label %dec_label_pc_54f28

dec_label_pc_54f28:                               ; preds = %dec_label_pc_54f1c
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_54f4b

dec_label_pc_54f4b:                               ; preds = %dec_label_pc_54f4b, %dec_label_pc_54f28
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_54f83, label %dec_label_pc_54f4b

dec_label_pc_54f74:                               ; preds = %dec_label_pc_54f1c
  call void @printLine(ptr @global_var_b8300)
  br label %dec_label_pc_54f83

dec_label_pc_54f83:                               ; preds = %dec_label_pc_54f4b, %dec_label_pc_54f74
  call void @free(ptr %4)
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

