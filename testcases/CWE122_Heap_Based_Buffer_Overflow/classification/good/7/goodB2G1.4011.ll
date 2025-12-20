@global_var_b5378 = external constant [16 x i8]
@global_var_b53a8 = external constant [21 x i8]
@global_var_b53c0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_ec02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2848b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-48.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_2850a, label %dec_label_pc_284b8

dec_label_pc_284b8:                               ; preds = %dec_label_pc_2848b
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_ec080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_284fb, label %dec_label_pc_284ea

dec_label_pc_284ea:                               ; preds = %dec_label_pc_284b8
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2850athread-pre-split

dec_label_pc_284fb:                               ; preds = %dec_label_pc_284b8
  call void @printLine(ptr @global_var_b5378)
  store i32 -1, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_2850athread-pre-split

dec_label_pc_2850athread-pre-split:               ; preds = %dec_label_pc_284ea, %dec_label_pc_284fb
  %stack_var_-48.0.ph.reload = load i32, ptr %stack_var_-48.0.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_ec02c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-48.0.ph.reload, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_2850a

dec_label_pc_2850a:                               ; preds = %dec_label_pc_2850athread-pre-split, %dec_label_pc_2848b
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = icmp eq i32 %.reload, 5
  br i1 %9, label %dec_label_pc_28529, label %dec_label_pc_28515

dec_label_pc_28515:                               ; preds = %dec_label_pc_2850a
  call void @printLine(ptr @global_var_b53a8)
  br label %dec_label_pc_285e8

dec_label_pc_28529:                               ; preds = %dec_label_pc_2850a
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %10 = call ptr @malloc(i32 40)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %13, label %dec_label_pc_28551, label %dec_label_pc_2853e

dec_label_pc_2853e:                               ; preds = %dec_label_pc_28529
  call void @exit(i32 -1)
  unreachable

dec_label_pc_28551:                               ; preds = %dec_label_pc_28529, %dec_label_pc_28551
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %14 = mul i64 %indvars.iv5.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_28575, label %dec_label_pc_28551

dec_label_pc_28575:                               ; preds = %dec_label_pc_28551
  %17 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %17, label %dec_label_pc_285cd, label %dec_label_pc_28581

dec_label_pc_28581:                               ; preds = %dec_label_pc_28575
  %18 = sext i32 %stack_var_-48.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %11
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_285a4

dec_label_pc_285a4:                               ; preds = %dec_label_pc_285a4, %dec_label_pc_28581
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %11
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_285dc, label %dec_label_pc_285a4

dec_label_pc_285cd:                               ; preds = %dec_label_pc_28575
  call void @printLine(ptr @global_var_b53c0)
  br label %dec_label_pc_285dc

dec_label_pc_285dc:                               ; preds = %dec_label_pc_285a4, %dec_label_pc_285cd
  call void @free(ptr %10)
  br label %dec_label_pc_285e8

dec_label_pc_285e8:                               ; preds = %dec_label_pc_285dc, %dec_label_pc_28515
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_285fd, label %dec_label_pc_285f8

dec_label_pc_285f8:                               ; preds = %dec_label_pc_285e8
  call void @__stack_chk_fail()
  br label %dec_label_pc_285fd

dec_label_pc_285fd:                               ; preds = %dec_label_pc_285f8, %dec_label_pc_285e8
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

