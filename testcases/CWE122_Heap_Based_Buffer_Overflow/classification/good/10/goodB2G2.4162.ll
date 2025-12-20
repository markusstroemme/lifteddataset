@global_var_b54c8 = external constant [16 x i8]
@global_var_b5510 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec070 = external local_unnamed_addr global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2993b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-48.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_29a86, label %dec_label_pc_29967

dec_label_pc_29967:                               ; preds = %dec_label_pc_2993b
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_299aa, label %dec_label_pc_29999

dec_label_pc_29999:                               ; preds = %dec_label_pc_29967
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_299b9

dec_label_pc_299aa:                               ; preds = %dec_label_pc_29967
  call void @printLine(ptr @global_var_b54c8)
  store i32 -1, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_299b9

dec_label_pc_299b9:                               ; preds = %dec_label_pc_299aa, %dec_label_pc_29999
  %.pr = load i32, ptr @global_var_ec070, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_29a86, label %dec_label_pc_299c7

dec_label_pc_299c7:                               ; preds = %dec_label_pc_299b9
  %stack_var_-48.0.ph.reload = load i32, ptr %stack_var_-48.0.ph.reg2mem, align 4
  %9 = call ptr @malloc(i32 40)
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i1 %11, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %12, label %dec_label_pc_299ef, label %dec_label_pc_299dc

dec_label_pc_299dc:                               ; preds = %dec_label_pc_299c7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_299ef:                               ; preds = %dec_label_pc_299c7, %dec_label_pc_299ef
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %13 = mul i64 %indvars.iv5.reload, 4
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_29a13, label %dec_label_pc_299ef

dec_label_pc_29a13:                               ; preds = %dec_label_pc_299ef
  %16 = icmp ugt i32 %stack_var_-48.0.ph.reload, 9
  br i1 %16, label %dec_label_pc_29a6b, label %dec_label_pc_29a1f

dec_label_pc_29a1f:                               ; preds = %dec_label_pc_29a13
  %17 = sext i32 %stack_var_-48.0.ph.reload to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_29a42

dec_label_pc_29a42:                               ; preds = %dec_label_pc_29a42, %dec_label_pc_29a1f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %10
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_29a7a, label %dec_label_pc_29a42

dec_label_pc_29a6b:                               ; preds = %dec_label_pc_29a13
  call void @printLine(ptr @global_var_b5510)
  br label %dec_label_pc_29a7a

dec_label_pc_29a7a:                               ; preds = %dec_label_pc_29a42, %dec_label_pc_29a6b
  call void @free(ptr %9)
  br label %dec_label_pc_29a86

dec_label_pc_29a86:                               ; preds = %dec_label_pc_2993b, %dec_label_pc_29a7a, %dec_label_pc_299b9
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_29a9b, label %dec_label_pc_29a96

dec_label_pc_29a96:                               ; preds = %dec_label_pc_29a86
  call void @__stack_chk_fail()
  br label %dec_label_pc_29a9b

dec_label_pc_29a9b:                               ; preds = %dec_label_pc_29a96, %dec_label_pc_29a86
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

