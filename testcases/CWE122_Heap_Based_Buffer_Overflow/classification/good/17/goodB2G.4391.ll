@global_var_b5790 = external constant [16 x i8]
@global_var_b57c0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2c15e:
  %indvars.iv10.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-30 to ptr
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_ec080, align 8
  %3 = call ptr @fgets(ptr nonnull %1, i32 14, ptr %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2c1a1, label %dec_label_pc_2c190

dec_label_pc_2c190:                               ; preds = %dec_label_pc_2c15e
  %5 = call i32 @atoi(ptr nonnull %1)
  store i32 %5, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2c1c6

dec_label_pc_2c1a1:                               ; preds = %dec_label_pc_2c15e
  call void @printLine(ptr @global_var_b5790)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2c1c6

dec_label_pc_2c1c6:                               ; preds = %dec_label_pc_2c1a1, %dec_label_pc_2c190
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %6 = icmp ugt i32 %stack_var_-48.0.reload, 9
  %7 = sext i32 %stack_var_-48.0.reload to i64
  %8 = mul i64 %7, 4
  %9 = call ptr @malloc(i32 40)
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i1 %11, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %12, label %dec_label_pc_2c1ee, label %dec_label_pc_2c1db

dec_label_pc_2c1db:                               ; preds = %dec_label_pc_2c1c6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2c1ee:                               ; preds = %dec_label_pc_2c1c6, %dec_label_pc_2c1ee
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2c212, label %dec_label_pc_2c1ee

dec_label_pc_2c212:                               ; preds = %dec_label_pc_2c1ee
  br i1 %6, label %dec_label_pc_2c26a, label %dec_label_pc_2c21e

dec_label_pc_2c21e:                               ; preds = %dec_label_pc_2c212
  %16 = add i64 %8, %10
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br label %dec_label_pc_2c241

dec_label_pc_2c241:                               ; preds = %dec_label_pc_2c241, %dec_label_pc_2c21e
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %18 = mul i64 %indvars.iv10.reload, 4
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_2c293, label %dec_label_pc_2c241

dec_label_pc_2c26a:                               ; preds = %dec_label_pc_2c212
  call void @printLine(ptr @global_var_b57c0)
  br label %dec_label_pc_2c293

dec_label_pc_2c293:                               ; preds = %dec_label_pc_2c241, %dec_label_pc_2c26a
  call void @free(ptr %9)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_2c2a8, label %dec_label_pc_2c2a3

dec_label_pc_2c2a3:                               ; preds = %dec_label_pc_2c293
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c2a8

dec_label_pc_2c2a8:                               ; preds = %dec_label_pc_2c2a3, %dec_label_pc_2c293
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

