@global_var_b5670 = external constant [16 x i8]
@global_var_b5680 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2b01e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_2b09d, label %dec_label_pc_2b04b

dec_label_pc_2b04b:                               ; preds = %dec_label_pc_2b01e
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_ec080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_2b08e, label %dec_label_pc_2b07d

dec_label_pc_2b07d:                               ; preds = %dec_label_pc_2b04b
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2b09d

dec_label_pc_2b08e:                               ; preds = %dec_label_pc_2b04b
  call void @printLine(ptr @global_var_b5670)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2b09d

dec_label_pc_2b09d:                               ; preds = %dec_label_pc_2b08e, %dec_label_pc_2b07d, %dec_label_pc_2b01e
  %9 = load i32, ptr @global_var_ec074, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_2b165, label %dec_label_pc_2b0ac

dec_label_pc_2b0ac:                               ; preds = %dec_label_pc_2b09d
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %12 = call ptr @malloc(i32 40)
  %13 = ptrtoint ptr %12 to i64
  %14 = icmp eq ptr %12, null
  %15 = icmp eq i1 %14, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2b0d4, label %dec_label_pc_2b0c1

dec_label_pc_2b0c1:                               ; preds = %dec_label_pc_2b0ac
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2b0d4:                               ; preds = %dec_label_pc_2b0ac, %dec_label_pc_2b0d4
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %16 = mul i64 %indvars.iv4.reload, 4
  %17 = add i64 %16, %13
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2b0f8, label %dec_label_pc_2b0d4

dec_label_pc_2b0f8:                               ; preds = %dec_label_pc_2b0d4
  %19 = icmp slt i32 %stack_var_-48.0.reload, 0
  br i1 %19, label %dec_label_pc_2b14a, label %dec_label_pc_2b0fe

dec_label_pc_2b0fe:                               ; preds = %dec_label_pc_2b0f8
  %20 = sext i32 %stack_var_-48.0.reload to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %21, %13
  %23 = inttoptr i64 %22 to ptr
  store i32 1, ptr %23, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2b121

dec_label_pc_2b121:                               ; preds = %dec_label_pc_2b121, %dec_label_pc_2b0fe
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %24 = mul i64 %indvars.iv.reload, 4
  %25 = add i64 %24, %13
  %26 = inttoptr i64 %25 to ptr
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2b159, label %dec_label_pc_2b121

dec_label_pc_2b14a:                               ; preds = %dec_label_pc_2b0f8
  call void @printLine(ptr @global_var_b5680)
  br label %dec_label_pc_2b159

dec_label_pc_2b159:                               ; preds = %dec_label_pc_2b121, %dec_label_pc_2b14a
  call void @free(ptr %12)
  br label %dec_label_pc_2b165

dec_label_pc_2b165:                               ; preds = %dec_label_pc_2b159, %dec_label_pc_2b09d
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_2b17a, label %dec_label_pc_2b175

dec_label_pc_2b175:                               ; preds = %dec_label_pc_2b165
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b17a

dec_label_pc_2b17a:                               ; preds = %dec_label_pc_2b175, %dec_label_pc_2b165
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

