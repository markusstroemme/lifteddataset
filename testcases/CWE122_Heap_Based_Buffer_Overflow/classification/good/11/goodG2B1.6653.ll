@global_var_b6f80 = external constant [32 x i8]
@global_var_b6fa0 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3f692:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3f6cb, label %dec_label_pc_3f6b3

dec_label_pc_3f6b3:                               ; preds = %dec_label_pc_3f692
  call void @printLine(ptr @global_var_b6fa0)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_3f6cb

dec_label_pc_3f6cb:                               ; preds = %dec_label_pc_3f692, %dec_label_pc_3f6b3
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3f796, label %dec_label_pc_3f6dd

dec_label_pc_3f6dd:                               ; preds = %dec_label_pc_3f6cb
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3f705, label %dec_label_pc_3f6f2

dec_label_pc_3f6f2:                               ; preds = %dec_label_pc_3f6dd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f705:                               ; preds = %dec_label_pc_3f6dd, %dec_label_pc_3f705
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_3f729, label %dec_label_pc_3f705

dec_label_pc_3f729:                               ; preds = %dec_label_pc_3f705
  %11 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %11, label %dec_label_pc_3f77b, label %dec_label_pc_3f72f

dec_label_pc_3f72f:                               ; preds = %dec_label_pc_3f729
  %12 = sext i32 %stack_var_-24.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3f752

dec_label_pc_3f752:                               ; preds = %dec_label_pc_3f752, %dec_label_pc_3f72f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3f78a, label %dec_label_pc_3f752

dec_label_pc_3f77b:                               ; preds = %dec_label_pc_3f729
  call void @printLine(ptr @global_var_b6f80)
  br label %dec_label_pc_3f78a

dec_label_pc_3f78a:                               ; preds = %dec_label_pc_3f752, %dec_label_pc_3f77b
  call void @free(ptr %4)
  br label %dec_label_pc_3f796

dec_label_pc_3f796:                               ; preds = %dec_label_pc_3f78a, %dec_label_pc_3f6cb
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a03ab:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

