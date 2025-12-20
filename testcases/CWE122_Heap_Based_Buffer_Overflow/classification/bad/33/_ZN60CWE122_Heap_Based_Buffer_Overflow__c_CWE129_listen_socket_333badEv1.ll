@global_var_bb9e8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8ea3b:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %.reg2mem12 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %.reg2mem12, align 4
  br i1 %2, label %dec_label_pc_8eb87, label %dec_label_pc_8ea94

dec_label_pc_8ea94:                               ; preds = %dec_label_pc_8ea3b
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_8eb77.thread6, label %dec_label_pc_8eae5

dec_label_pc_8eae5:                               ; preds = %dec_label_pc_8ea94
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_8eb77.thread6, label %dec_label_pc_8eafe

dec_label_pc_8eafe:                               ; preds = %dec_label_pc_8eae5
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_8eb77.thread6, label %dec_label_pc_8eb1b

dec_label_pc_8eb1b:                               ; preds = %dec_label_pc_8eafe
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %.reg2mem, align 4
  br i1 %18, label %dec_label_pc_8eb7d, label %dec_label_pc_8eb42

dec_label_pc_8eb42:                               ; preds = %dec_label_pc_8eb1b
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %.reg2mem, align 4
  br label %dec_label_pc_8eb7d

dec_label_pc_8eb77.thread6:                       ; preds = %dec_label_pc_8eafe, %dec_label_pc_8eae5, %dec_label_pc_8ea94
  %26 = call i32 @close(i32 %1)
  store i32 -1, ptr %.reg2mem12, align 4
  br label %dec_label_pc_8eb87

dec_label_pc_8eb7d:                               ; preds = %dec_label_pc_8eb42, %dec_label_pc_8eb1b
  %.reload = load i32, ptr %.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i32 %.reload, ptr %.reg2mem12, align 4
  br label %dec_label_pc_8eb87

dec_label_pc_8eb87:                               ; preds = %dec_label_pc_8ea3b, %dec_label_pc_8eb77.thread6, %dec_label_pc_8eb7d
  %.reload13 = load i32, ptr %.reg2mem12, align 4
  %29 = call ptr @malloc(i32 40)
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq ptr %29, null
  %32 = icmp eq i1 %31, false
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %32, label %dec_label_pc_8ebb8, label %dec_label_pc_8eba5

dec_label_pc_8eba5:                               ; preds = %dec_label_pc_8eb87
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8ebb8:                               ; preds = %dec_label_pc_8eb87, %dec_label_pc_8ebb8
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %33 = mul i64 %indvars.iv9.reload, 4
  %34 = add i64 %33, %30
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_8ebdc, label %dec_label_pc_8ebb8

dec_label_pc_8ebdc:                               ; preds = %dec_label_pc_8ebb8
  %36 = icmp slt i32 %.reload13, 0
  br i1 %36, label %dec_label_pc_8ec2e, label %dec_label_pc_8ebe2

dec_label_pc_8ebe2:                               ; preds = %dec_label_pc_8ebdc
  %37 = sext i32 %.reload13 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %38, %30
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_8ec05

dec_label_pc_8ec05:                               ; preds = %dec_label_pc_8ec05, %dec_label_pc_8ebe2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %41 = mul i64 %indvars.iv.reload, 4
  %42 = add i64 %41, %30
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8ec3d, label %dec_label_pc_8ec05

dec_label_pc_8ec2e:                               ; preds = %dec_label_pc_8ebdc
  call void @printLine(ptr @global_var_bb9e8)
  br label %dec_label_pc_8ec3d

dec_label_pc_8ec3d:                               ; preds = %dec_label_pc_8ec05, %dec_label_pc_8ec2e
  call void @free(ptr %29)
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %0, %45
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %46, label %dec_label_pc_8ec5e, label %dec_label_pc_8ec59

dec_label_pc_8ec59:                               ; preds = %dec_label_pc_8ec3d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8ec5e

dec_label_pc_8ec5e:                               ; preds = %dec_label_pc_8ec59, %dec_label_pc_8ec3d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

