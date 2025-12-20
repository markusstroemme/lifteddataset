@global_var_b611c = external constant [3 x i8]
@global_var_b6158 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_335dc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b611c, ptr nonnull %stack_var_-32)
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_33670, label %dec_label_pc_3365d

dec_label_pc_3365d:                               ; preds = %dec_label_pc_335dc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_33670:                               ; preds = %dec_label_pc_335dc, %dec_label_pc_33670
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_33694, label %dec_label_pc_33670

dec_label_pc_33694:                               ; preds = %dec_label_pc_33670
  %10 = load i32, ptr %stack_var_-32, align 4
  %11 = icmp ugt i32 %10, 9
  br i1 %11, label %dec_label_pc_336ef, label %dec_label_pc_336a3

dec_label_pc_336a3:                               ; preds = %dec_label_pc_33694
  %12 = sext i32 %10 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_336c6

dec_label_pc_336c6:                               ; preds = %dec_label_pc_336c6, %dec_label_pc_336a3
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %4
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_336fe, label %dec_label_pc_336c6

dec_label_pc_336ef:                               ; preds = %dec_label_pc_33694
  call void @printLine(ptr @global_var_b6158)
  br label %dec_label_pc_336fe

dec_label_pc_336fe:                               ; preds = %dec_label_pc_336c6, %dec_label_pc_336ef
  call void @free(ptr %3)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_3371f, label %dec_label_pc_3371a

dec_label_pc_3371a:                               ; preds = %dec_label_pc_336fe
  call void @__stack_chk_fail()
  br label %dec_label_pc_3371f

dec_label_pc_3371f:                               ; preds = %dec_label_pc_3371a, %dec_label_pc_336fe
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

