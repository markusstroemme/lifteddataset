@global_var_b4b90 = external constant [10 x i8]
@global_var_b4ba0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_20ab3:
  %.reg2mem7 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-100.06.reg2mem = alloca i32, align 4
  %stack_var_-100.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-100.06.reg2mem, align 4
  br i1 %2, label %dec_label_pc_20bc3, label %dec_label_pc_20b16

dec_label_pc_20b16:                               ; preds = %dec_label_pc_20ab3
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4b90)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_20bb9, label %dec_label_pc_20b6d

dec_label_pc_20b6d:                               ; preds = %dec_label_pc_20b16
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  switch i32 %9, label %dec_label_pc_20b94 [
    i32 -1, label %dec_label_pc_20bb9
    i32 0, label %dec_label_pc_20bb9
  ]

dec_label_pc_20b94:                               ; preds = %dec_label_pc_20b6d
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = sext i32 %9 to i64
  %12 = add i64 %10, -22
  %13 = add i64 %12, %11
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = bitcast ptr %stack_var_-30 to ptr
  %16 = call i32 @atoi(ptr nonnull %15)
  store i32 %16, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br label %dec_label_pc_20bb9

dec_label_pc_20bb9:                               ; preds = %dec_label_pc_20b6d, %dec_label_pc_20b6d, %dec_label_pc_20b16, %dec_label_pc_20b94
  %stack_var_-100.0.ph.reload = load i32, ptr %stack_var_-100.0.ph.reg2mem, align 4
  %17 = call i32 @close(i32 %1)
  store i32 %stack_var_-100.0.ph.reload, ptr %stack_var_-100.06.reg2mem, align 4
  br label %dec_label_pc_20bc3

dec_label_pc_20bc3:                               ; preds = %dec_label_pc_20ab3, %dec_label_pc_20bb9
  %stack_var_-100.06.reload = load i32, ptr %stack_var_-100.06.reg2mem, align 4
  %18 = call ptr @malloc(i32 40)
  %19 = ptrtoint ptr %18 to i64
  %20 = icmp eq ptr %18, null
  %21 = icmp eq i1 %20, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %21, label %dec_label_pc_20bfd, label %dec_label_pc_20bea

dec_label_pc_20bea:                               ; preds = %dec_label_pc_20bc3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_20bfd:                               ; preds = %dec_label_pc_20bc3, %dec_label_pc_20bfd
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext3 = mul i64 %.reload, 4294967296
  %22 = ashr exact i64 %sext3, 30
  %23 = add i64 %22, %19
  %24 = inttoptr i64 %23 to ptr
  store i32 0, ptr %24, align 4
  %25 = add nuw nsw i64 %.reload, 1
  %26 = and i64 %25, 4294967295
  %27 = trunc i64 %25 to i32
  %28 = icmp slt i32 %27, 10
  store i64 %26, ptr %.reg2mem, align 8
  br i1 %28, label %dec_label_pc_20bfd, label %dec_label_pc_20c21

dec_label_pc_20c21:                               ; preds = %dec_label_pc_20bfd
  %29 = icmp slt i32 %stack_var_-100.06.reload, 0
  br i1 %29, label %dec_label_pc_20c73, label %dec_label_pc_20c27

dec_label_pc_20c27:                               ; preds = %dec_label_pc_20c21
  %30 = sext i32 %stack_var_-100.06.reload to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %31, %19
  %33 = inttoptr i64 %32 to ptr
  store i32 1, ptr %33, align 4
  store i64 0, ptr %.reg2mem7, align 8
  br label %dec_label_pc_20c4a

dec_label_pc_20c4a:                               ; preds = %dec_label_pc_20c27, %dec_label_pc_20c4a
  %.reload8 = load i64, ptr %.reg2mem7, align 8
  %sext2 = mul i64 %.reload8, 4294967296
  %34 = ashr exact i64 %sext2, 30
  %35 = add i64 %34, %19
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 4
  call void @printIntLine(i32 %37)
  %38 = add nuw nsw i64 %.reload8, 1
  %39 = and i64 %38, 4294967295
  %40 = trunc i64 %38 to i32
  %41 = icmp slt i32 %40, 10
  store i64 %39, ptr %.reg2mem7, align 8
  br i1 %41, label %dec_label_pc_20c4a, label %dec_label_pc_20c82

dec_label_pc_20c73:                               ; preds = %dec_label_pc_20c21
  call void @printLine(ptr @global_var_b4ba0)
  br label %dec_label_pc_20c82

dec_label_pc_20c82:                               ; preds = %dec_label_pc_20c4a, %dec_label_pc_20c73
  call void @free(ptr %18)
  %42 = call i64 @__readfsqword(i64 40)
  %43 = icmp eq i64 %0, %42
  br i1 %43, label %dec_label_pc_20ca3, label %dec_label_pc_20c9e

dec_label_pc_20c9e:                               ; preds = %dec_label_pc_20c82
  call void @__stack_chk_fail()
  br label %dec_label_pc_20ca3

dec_label_pc_20ca3:                               ; preds = %dec_label_pc_20c9e, %dec_label_pc_20c82
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

