@global_var_b5538 = external constant [16 x i8]
@global_var_b5548 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_29cbd:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_29d3f, label %dec_label_pc_29ced

dec_label_pc_29ced:                               ; preds = %dec_label_pc_29cbd
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_29d30, label %dec_label_pc_29d1f

dec_label_pc_29d1f:                               ; preds = %dec_label_pc_29ced
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_29d3f

dec_label_pc_29d30:                               ; preds = %dec_label_pc_29ced
  call void @printLine(ptr @global_var_b5538)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_29d3f

dec_label_pc_29d3f:                               ; preds = %dec_label_pc_29d30, %dec_label_pc_29d1f, %dec_label_pc_29cbd
  %8 = call i32 @globalReturnsTrue()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_29e0a, label %dec_label_pc_29d51

dec_label_pc_29d51:                               ; preds = %dec_label_pc_29d3f
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %10 = call ptr @malloc(i32 40)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %13, label %dec_label_pc_29d79, label %dec_label_pc_29d66

dec_label_pc_29d66:                               ; preds = %dec_label_pc_29d51
  call void @exit(i32 -1)
  unreachable

dec_label_pc_29d79:                               ; preds = %dec_label_pc_29d51, %dec_label_pc_29d79
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %14 = mul i64 %indvars.iv4.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_29d9d, label %dec_label_pc_29d79

dec_label_pc_29d9d:                               ; preds = %dec_label_pc_29d79
  %17 = icmp slt i32 %stack_var_-48.0.reload, 0
  br i1 %17, label %dec_label_pc_29def, label %dec_label_pc_29da3

dec_label_pc_29da3:                               ; preds = %dec_label_pc_29d9d
  %18 = sext i32 %stack_var_-48.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %11
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_29dc6

dec_label_pc_29dc6:                               ; preds = %dec_label_pc_29dc6, %dec_label_pc_29da3
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %11
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_29dfe, label %dec_label_pc_29dc6

dec_label_pc_29def:                               ; preds = %dec_label_pc_29d9d
  call void @printLine(ptr @global_var_b5548)
  br label %dec_label_pc_29dfe

dec_label_pc_29dfe:                               ; preds = %dec_label_pc_29dc6, %dec_label_pc_29def
  call void @free(ptr %10)
  br label %dec_label_pc_29e0a

dec_label_pc_29e0a:                               ; preds = %dec_label_pc_29dfe, %dec_label_pc_29d3f
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_29e1f, label %dec_label_pc_29e1a

dec_label_pc_29e1a:                               ; preds = %dec_label_pc_29e0a
  call void @__stack_chk_fail()
  br label %dec_label_pc_29e1f

dec_label_pc_29e1f:                               ; preds = %dec_label_pc_29e1a, %dec_label_pc_29e0a
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

