@global_var_b51c0 = external constant [16 x i8]
@global_var_b51f0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_26bd4:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_26c39, label %dec_label_pc_26c28

dec_label_pc_26c28:                               ; preds = %dec_label_pc_26bd4
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_26c48

dec_label_pc_26c39:                               ; preds = %dec_label_pc_26bd4
  call void @printLine(ptr @global_var_b51c0)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_26c48

dec_label_pc_26c48:                               ; preds = %dec_label_pc_26c39, %dec_label_pc_26c28
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %6 = call ptr @malloc(i32 40)
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp eq ptr %6, null
  %9 = icmp eq i1 %8, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %9, label %dec_label_pc_26c70, label %dec_label_pc_26c5d

dec_label_pc_26c5d:                               ; preds = %dec_label_pc_26c48
  call void @exit(i32 -1)
  unreachable

dec_label_pc_26c70:                               ; preds = %dec_label_pc_26c48, %dec_label_pc_26c70
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %10 = mul i64 %indvars.iv5.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_26c94, label %dec_label_pc_26c70

dec_label_pc_26c94:                               ; preds = %dec_label_pc_26c70
  %13 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %13, label %dec_label_pc_26cec, label %dec_label_pc_26ca0

dec_label_pc_26ca0:                               ; preds = %dec_label_pc_26c94
  %14 = sext i32 %stack_var_-48.0.reload to i64
  %15 = mul i64 %14, 4
  %16 = add i64 %15, %7
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_26cc3

dec_label_pc_26cc3:                               ; preds = %dec_label_pc_26cc3, %dec_label_pc_26ca0
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %18 = mul i64 %indvars.iv.reload, 4
  %19 = add i64 %18, %7
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26cfb, label %dec_label_pc_26cc3

dec_label_pc_26cec:                               ; preds = %dec_label_pc_26c94
  call void @printLine(ptr @global_var_b51f0)
  br label %dec_label_pc_26cfb

dec_label_pc_26cfb:                               ; preds = %dec_label_pc_26cc3, %dec_label_pc_26cec
  call void @free(ptr %6)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_26d1c, label %dec_label_pc_26d17

dec_label_pc_26d17:                               ; preds = %dec_label_pc_26cfb
  call void @__stack_chk_fail()
  br label %dec_label_pc_26d1c

dec_label_pc_26d1c:                               ; preds = %dec_label_pc_26d17, %dec_label_pc_26cfb
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

