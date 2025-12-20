@global_var_b48a8 = external constant [32 x i8]
@global_var_b48c8 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1dfdb:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.09.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  store i32 7, ptr %stack_var_-24.09.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1e020, label %dec_label_pc_1e011

dec_label_pc_1e011:                               ; preds = %dec_label_pc_1dfdb
  call void @printLine(ptr @global_var_b48c8)
  %.pre = load i32, ptr @global_var_ec074, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp8 = icmp eq i1 %phitmp, false
  store i32 -1, ptr %stack_var_-24.09.reg2mem, align 4
  br i1 %phitmp8, label %dec_label_pc_1e0d9, label %dec_label_pc_1e020

dec_label_pc_1e020:                               ; preds = %dec_label_pc_1dfdb, %dec_label_pc_1e011
  %stack_var_-24.09.reload = load i32, ptr %stack_var_-24.09.reg2mem, align 4
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1e048, label %dec_label_pc_1e035

dec_label_pc_1e035:                               ; preds = %dec_label_pc_1e020
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1e048:                               ; preds = %dec_label_pc_1e020, %dec_label_pc_1e048
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1e06c, label %dec_label_pc_1e048

dec_label_pc_1e06c:                               ; preds = %dec_label_pc_1e048
  %9 = icmp slt i32 %stack_var_-24.09.reload, 0
  br i1 %9, label %dec_label_pc_1e0be, label %dec_label_pc_1e072

dec_label_pc_1e072:                               ; preds = %dec_label_pc_1e06c
  %10 = sext i32 %stack_var_-24.09.reload to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1e095

dec_label_pc_1e095:                               ; preds = %dec_label_pc_1e095, %dec_label_pc_1e072
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e0cd, label %dec_label_pc_1e095

dec_label_pc_1e0be:                               ; preds = %dec_label_pc_1e06c
  call void @printLine(ptr @global_var_b48a8)
  br label %dec_label_pc_1e0cd

dec_label_pc_1e0cd:                               ; preds = %dec_label_pc_1e095, %dec_label_pc_1e0be
  call void @free(ptr %2)
  br label %dec_label_pc_1e0d9

dec_label_pc_1e0d9:                               ; preds = %dec_label_pc_1e0cd, %dec_label_pc_1e011
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

