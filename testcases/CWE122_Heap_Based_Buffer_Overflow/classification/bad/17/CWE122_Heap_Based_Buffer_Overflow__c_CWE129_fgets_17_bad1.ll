@global_var_b5790 = external constant [16 x i8]
@global_var_b57a0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2bfed:
  %indvars.iv9.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-30 to ptr
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_ec080, align 8
  %3 = call ptr @fgets(ptr nonnull %1, i32 14, ptr %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2c030, label %dec_label_pc_2c01f

dec_label_pc_2c01f:                               ; preds = %dec_label_pc_2bfed
  %5 = call i32 @atoi(ptr nonnull %1)
  store i32 %5, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2c055

dec_label_pc_2c030:                               ; preds = %dec_label_pc_2bfed
  call void @printLine(ptr @global_var_b5790)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2c055

dec_label_pc_2c055:                               ; preds = %dec_label_pc_2c030, %dec_label_pc_2c01f
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %6 = icmp slt i32 %stack_var_-48.0.reload, 0
  %7 = sext i32 %stack_var_-48.0.reload to i64
  %8 = mul i64 %7, 4
  %9 = call ptr @malloc(i32 40)
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i1 %11, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %12, label %dec_label_pc_2c07d, label %dec_label_pc_2c06a

dec_label_pc_2c06a:                               ; preds = %dec_label_pc_2c055
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2c07d:                               ; preds = %dec_label_pc_2c055, %dec_label_pc_2c07d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2c0a1, label %dec_label_pc_2c07d

dec_label_pc_2c0a1:                               ; preds = %dec_label_pc_2c07d
  br i1 %6, label %dec_label_pc_2c0f3, label %dec_label_pc_2c0a7

dec_label_pc_2c0a7:                               ; preds = %dec_label_pc_2c0a1
  %16 = add i64 %8, %10
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br label %dec_label_pc_2c0ca

dec_label_pc_2c0ca:                               ; preds = %dec_label_pc_2c0ca, %dec_label_pc_2c0a7
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %18 = mul i64 %indvars.iv9.reload, 4
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_2c11c, label %dec_label_pc_2c0ca

dec_label_pc_2c0f3:                               ; preds = %dec_label_pc_2c0a1
  call void @printLine(ptr @global_var_b57a0)
  br label %dec_label_pc_2c11c

dec_label_pc_2c11c:                               ; preds = %dec_label_pc_2c0ca, %dec_label_pc_2c0f3
  call void @free(ptr %9)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_2c131, label %dec_label_pc_2c12c

dec_label_pc_2c12c:                               ; preds = %dec_label_pc_2c11c
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c131

dec_label_pc_2c131:                               ; preds = %dec_label_pc_2c12c, %dec_label_pc_2c11c
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

