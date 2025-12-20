@global_var_b4f7c = external constant [10 x i8]
@global_var_b4f88 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_247d5:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-68 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-68, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_248cc, label %dec_label_pc_2481f

dec_label_pc_2481f:                               ; preds = %dec_label_pc_247d5
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b4f7c)
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_248c2, label %dec_label_pc_24876

dec_label_pc_24876:                               ; preds = %dec_label_pc_2481f
  %8 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %dec_label_pc_248c2, label %dec_label_pc_2489d

dec_label_pc_2489d:                               ; preds = %dec_label_pc_24876
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %8 to i64
  %13 = add i64 %11, -22
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = bitcast ptr %stack_var_-30 to ptr
  %17 = call i32 @atoi(ptr nonnull %16)
  store i32 %17, ptr %stack_var_-68, align 4
  br label %dec_label_pc_248c2

dec_label_pc_248c2:                               ; preds = %dec_label_pc_24876, %dec_label_pc_2489d, %dec_label_pc_2481f
  %18 = call i32 @close(i32 %1)
  br label %dec_label_pc_248cc

dec_label_pc_248cc:                               ; preds = %dec_label_pc_247d5, %dec_label_pc_248c2
  %19 = bitcast ptr %stack_var_-68 to ptr
  call void @anon1(ptr nonnull %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_248ed, label %dec_label_pc_248e8

dec_label_pc_248e8:                               ; preds = %dec_label_pc_248cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_248ed

dec_label_pc_248ed:                               ; preds = %dec_label_pc_248e8, %dec_label_pc_248cc
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_24a74:
  %0 = alloca i64, align 8
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %6, label %dec_label_pc_24abd, label %dec_label_pc_24aaa

dec_label_pc_24aaa:                               ; preds = %dec_label_pc_24a74
  call void @exit(i32 -1)
  unreachable

dec_label_pc_24abd:                               ; preds = %dec_label_pc_24a74, %dec_label_pc_24abd
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext1 = mul i64 %.reload, 4294967296
  %7 = ashr exact i64 %sext1, 30
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %.reload, 1
  %11 = and i64 %10, 4294967295
  %12 = trunc i64 %10 to i32
  %13 = icmp slt i32 %12, 10
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_24abd, label %dec_label_pc_24ae1

dec_label_pc_24ae1:                               ; preds = %dec_label_pc_24abd
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %dec_label_pc_24b33, label %dec_label_pc_24ae7

dec_label_pc_24ae7:                               ; preds = %dec_label_pc_24ae1
  %sext3 = mul i64 %1, 4294967296
  %15 = ashr exact i64 %sext3, 30
  %16 = add i64 %15, %4
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %.reg2mem4, align 8
  br label %dec_label_pc_24b0a

dec_label_pc_24b0a:                               ; preds = %dec_label_pc_24ae7, %dec_label_pc_24b0a
  %.reload5 = load i64, ptr %.reg2mem4, align 8
  %sext = mul i64 %.reload5, 4294967296
  %18 = ashr exact i64 %sext, 30
  %19 = add i64 %18, %4
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = add nuw nsw i64 %.reload5, 1
  %23 = and i64 %22, 4294967295
  %24 = trunc i64 %22 to i32
  %25 = icmp slt i32 %24, 10
  store i64 %23, ptr %.reg2mem4, align 8
  br i1 %25, label %dec_label_pc_24b0a, label %dec_label_pc_24b42

dec_label_pc_24b33:                               ; preds = %dec_label_pc_24ae1
  call void @printLine(ptr @global_var_b4f88)
  br label %dec_label_pc_24b42

dec_label_pc_24b42:                               ; preds = %dec_label_pc_24b0a, %dec_label_pc_24b33
  call void @free(ptr %3)
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

