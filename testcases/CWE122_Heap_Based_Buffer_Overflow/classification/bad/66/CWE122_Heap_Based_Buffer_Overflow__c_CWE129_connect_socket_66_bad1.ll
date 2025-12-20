@global_var_b501c = external constant [10 x i8]
@global_var_b5028 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_25212:
  %.reg2mem = alloca i32, align 4
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
  br i1 %5, label %dec_label_pc_25309, label %dec_label_pc_2525c

dec_label_pc_2525c:                               ; preds = %dec_label_pc_25212
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b501c)
  %8 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %11, label %dec_label_pc_252ff, label %dec_label_pc_252b3

dec_label_pc_252b3:                               ; preds = %dec_label_pc_2525c
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %14, label %dec_label_pc_252ff, label %dec_label_pc_252f9

dec_label_pc_252f9:                               ; preds = %dec_label_pc_252b3
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %.pr = load i32, ptr %3, align 4
  %22 = icmp eq i32 %.pr, -1
  store i32 %.pr, ptr %.reg2mem, align 4
  br i1 %22, label %dec_label_pc_25309, label %dec_label_pc_252ff

dec_label_pc_252ff:                               ; preds = %dec_label_pc_252b3, %dec_label_pc_2525c, %dec_label_pc_252f9
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = call i32 @close(i32 %.reload)
  br label %dec_label_pc_25309

dec_label_pc_25309:                               ; preds = %dec_label_pc_25212, %dec_label_pc_252ff, %dec_label_pc_252f9
  %24 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_25330, label %dec_label_pc_2532b

dec_label_pc_2532b:                               ; preds = %dec_label_pc_25309
  call void @__stack_chk_fail()
  br label %dec_label_pc_25330

dec_label_pc_25330:                               ; preds = %dec_label_pc_2532b, %dec_label_pc_25309
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_254c3:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %7, label %dec_label_pc_25505, label %dec_label_pc_254f2

dec_label_pc_254f2:                               ; preds = %dec_label_pc_254c3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_25505:                               ; preds = %dec_label_pc_254c3, %dec_label_pc_25505
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %8 = mul i64 %indvars.iv4.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_25529, label %dec_label_pc_25505

dec_label_pc_25529:                               ; preds = %dec_label_pc_25505
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %dec_label_pc_2557b, label %dec_label_pc_2552f

dec_label_pc_2552f:                               ; preds = %dec_label_pc_25529
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_25552

dec_label_pc_25552:                               ; preds = %dec_label_pc_25552, %dec_label_pc_2552f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2558a, label %dec_label_pc_25552

dec_label_pc_2557b:                               ; preds = %dec_label_pc_25529
  call void @printLine(ptr @global_var_b5028)
  br label %dec_label_pc_2558a

dec_label_pc_2558a:                               ; preds = %dec_label_pc_25552, %dec_label_pc_2557b
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

