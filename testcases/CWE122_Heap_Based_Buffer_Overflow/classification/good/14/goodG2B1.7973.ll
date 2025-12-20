@global_var_b7c68 = external constant [32 x i8]
@global_var_b7c88 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4cbd5:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.09.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  store i32 7, ptr %stack_var_-24.09.reg2mem, align 4
  br i1 %1, label %dec_label_pc_4cc1a, label %dec_label_pc_4cc0b

dec_label_pc_4cc0b:                               ; preds = %dec_label_pc_4cbd5
  call void @printLine(ptr @global_var_b7c88)
  %.pre = load i32, ptr @global_var_ec074, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp8 = icmp eq i1 %phitmp, false
  store i32 -1, ptr %stack_var_-24.09.reg2mem, align 4
  br i1 %phitmp8, label %dec_label_pc_4ccd3, label %dec_label_pc_4cc1a

dec_label_pc_4cc1a:                               ; preds = %dec_label_pc_4cbd5, %dec_label_pc_4cc0b
  %stack_var_-24.09.reload = load i32, ptr %stack_var_-24.09.reg2mem, align 4
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4cc42, label %dec_label_pc_4cc2f

dec_label_pc_4cc2f:                               ; preds = %dec_label_pc_4cc1a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4cc42:                               ; preds = %dec_label_pc_4cc1a, %dec_label_pc_4cc42
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_4cc66, label %dec_label_pc_4cc42

dec_label_pc_4cc66:                               ; preds = %dec_label_pc_4cc42
  %9 = icmp slt i32 %stack_var_-24.09.reload, 0
  br i1 %9, label %dec_label_pc_4ccb8, label %dec_label_pc_4cc6c

dec_label_pc_4cc6c:                               ; preds = %dec_label_pc_4cc66
  %10 = sext i32 %stack_var_-24.09.reload to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4cc8f

dec_label_pc_4cc8f:                               ; preds = %dec_label_pc_4cc8f, %dec_label_pc_4cc6c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4ccc7, label %dec_label_pc_4cc8f

dec_label_pc_4ccb8:                               ; preds = %dec_label_pc_4cc66
  call void @printLine(ptr @global_var_b7c68)
  br label %dec_label_pc_4ccc7

dec_label_pc_4ccc7:                               ; preds = %dec_label_pc_4cc8f, %dec_label_pc_4ccb8
  call void @free(ptr %2)
  br label %dec_label_pc_4ccd3

dec_label_pc_4ccd3:                               ; preds = %dec_label_pc_4ccc7, %dec_label_pc_4cc0b
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

