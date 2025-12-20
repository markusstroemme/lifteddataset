@global_var_b99e8 = external constant [10 x i8]
@global_var_b9a18 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7d0d2:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %.reg2mem11 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  store i32 -1, ptr %.reg2mem11, align 4
  br i1 %cond, label %dec_label_pc_7d1d6, label %dec_label_pc_7d124

dec_label_pc_7d124:                               ; preds = %dec_label_pc_7d0d2
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b99e8)
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  store i32 -1, ptr %.reg2mem, align 4
  br i1 %9, label %dec_label_pc_7d1cc, label %dec_label_pc_7d180

dec_label_pc_7d180:                               ; preds = %dec_label_pc_7d124
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  store i32 -1, ptr %.reg2mem, align 4
  br i1 %12, label %dec_label_pc_7d1cc, label %dec_label_pc_7d1a7

dec_label_pc_7d1a7:                               ; preds = %dec_label_pc_7d180
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %.reg2mem, align 4
  br label %dec_label_pc_7d1cc

dec_label_pc_7d1cc:                               ; preds = %dec_label_pc_7d180, %dec_label_pc_7d1a7, %dec_label_pc_7d124
  %.reload = load i32, ptr %.reg2mem, align 4
  %20 = call i32 @close(i32 %1)
  store i32 %.reload, ptr %.reg2mem11, align 4
  br label %dec_label_pc_7d1d6

dec_label_pc_7d1d6:                               ; preds = %dec_label_pc_7d0d2, %dec_label_pc_7d1cc
  %.reload12 = load i32, ptr %.reg2mem11, align 4
  %21 = call ptr @malloc(i32 40)
  %22 = ptrtoint ptr %21 to i64
  %23 = icmp eq ptr %21, null
  %24 = icmp eq i1 %23, false
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br i1 %24, label %dec_label_pc_7d207, label %dec_label_pc_7d1f4

dec_label_pc_7d1f4:                               ; preds = %dec_label_pc_7d1d6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7d207:                               ; preds = %dec_label_pc_7d1d6, %dec_label_pc_7d207
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %25 = mul i64 %indvars.iv8.reload, 4
  %26 = add i64 %25, %22
  %27 = inttoptr i64 %26 to ptr
  store i32 0, ptr %27, align 4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_7d22b, label %dec_label_pc_7d207

dec_label_pc_7d22b:                               ; preds = %dec_label_pc_7d207
  %28 = icmp ugt i32 %.reload12, 9
  br i1 %28, label %dec_label_pc_7d283, label %dec_label_pc_7d237

dec_label_pc_7d237:                               ; preds = %dec_label_pc_7d22b
  %29 = sext i32 %.reload12 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 %30, %22
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7d25a

dec_label_pc_7d25a:                               ; preds = %dec_label_pc_7d25a, %dec_label_pc_7d237
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %33 = mul i64 %indvars.iv.reload, 4
  %34 = add i64 %33, %22
  %35 = inttoptr i64 %34 to ptr
  %36 = load i32, ptr %35, align 4
  call void @printIntLine(i32 %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7d292, label %dec_label_pc_7d25a

dec_label_pc_7d283:                               ; preds = %dec_label_pc_7d22b
  call void @printLine(ptr @global_var_b9a18)
  br label %dec_label_pc_7d292

dec_label_pc_7d292:                               ; preds = %dec_label_pc_7d25a, %dec_label_pc_7d283
  call void @free(ptr %21)
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %38, label %dec_label_pc_7d2b3, label %dec_label_pc_7d2ae

dec_label_pc_7d2ae:                               ; preds = %dec_label_pc_7d292
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d2b3

dec_label_pc_7d2b3:                               ; preds = %dec_label_pc_7d2ae, %dec_label_pc_7d292
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

