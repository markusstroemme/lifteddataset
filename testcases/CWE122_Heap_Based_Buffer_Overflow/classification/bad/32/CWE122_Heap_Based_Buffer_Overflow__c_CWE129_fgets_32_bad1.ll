@global_var_b5978 = external constant [16 x i8]
@global_var_b5988 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2d66b:
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-68.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2d6e9, label %dec_label_pc_2d6d8

dec_label_pc_2d6d8:                               ; preds = %dec_label_pc_2d66b
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-68.0.reg2mem, align 4
  br label %dec_label_pc_2d6f8

dec_label_pc_2d6e9:                               ; preds = %dec_label_pc_2d66b
  call void @printLine(ptr @global_var_b5978)
  store i32 -1, ptr %stack_var_-68.0.reg2mem, align 4
  br label %dec_label_pc_2d6f8

dec_label_pc_2d6f8:                               ; preds = %dec_label_pc_2d6e9, %dec_label_pc_2d6d8
  %stack_var_-68.0.reload = load i32, ptr %stack_var_-68.0.reg2mem, align 4
  %6 = call ptr @malloc(i32 40)
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq ptr %6, null
  %9 = icmp eq i1 %8, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2d732, label %dec_label_pc_2d71f

dec_label_pc_2d71f:                               ; preds = %dec_label_pc_2d6f8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2d732:                               ; preds = %dec_label_pc_2d6f8, %dec_label_pc_2d732
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext2 = mul i64 %.reload, 4294967296
  %10 = ashr exact i64 %sext2, 30
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %.reload, 1
  %14 = and i64 %13, 4294967295
  %15 = trunc i64 %13 to i32
  %16 = icmp slt i32 %15, 10
  store i64 %14, ptr %.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2d732, label %dec_label_pc_2d756

dec_label_pc_2d756:                               ; preds = %dec_label_pc_2d732
  %17 = icmp slt i32 %stack_var_-68.0.reload, 0
  br i1 %17, label %dec_label_pc_2d7a8, label %dec_label_pc_2d75c

dec_label_pc_2d75c:                               ; preds = %dec_label_pc_2d756
  %18 = sext i32 %stack_var_-68.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %7
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %.reg2mem4, align 8
  br label %dec_label_pc_2d77f

dec_label_pc_2d77f:                               ; preds = %dec_label_pc_2d75c, %dec_label_pc_2d77f
  %.reload5 = load i64, ptr %.reg2mem4, align 8
  %sext = mul i64 %.reload5, 4294967296
  %22 = ashr exact i64 %sext, 30
  %23 = add i64 %22, %7
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %26 = add nuw nsw i64 %.reload5, 1
  %27 = and i64 %26, 4294967295
  %28 = trunc i64 %26 to i32
  %29 = icmp slt i32 %28, 10
  store i64 %27, ptr %.reg2mem4, align 8
  br i1 %29, label %dec_label_pc_2d77f, label %dec_label_pc_2d7b7

dec_label_pc_2d7a8:                               ; preds = %dec_label_pc_2d756
  call void @printLine(ptr @global_var_b5988)
  br label %dec_label_pc_2d7b7

dec_label_pc_2d7b7:                               ; preds = %dec_label_pc_2d77f, %dec_label_pc_2d7a8
  call void @free(ptr %6)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_2d7d8, label %dec_label_pc_2d7d3

dec_label_pc_2d7d3:                               ; preds = %dec_label_pc_2d7b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d7d8

dec_label_pc_2d7d8:                               ; preds = %dec_label_pc_2d7d3, %dec_label_pc_2d7b7
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

