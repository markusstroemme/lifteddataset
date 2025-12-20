@global_var_b5290 = external constant [16 x i8]
@global_var_b52c0 = external constant [21 x i8]
@global_var_b52d8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_ec028 = external local_unnamed_addr global i32
@global_var_ec15c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_277e9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec028, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_27867, label %dec_label_pc_27815

dec_label_pc_27815:                               ; preds = %dec_label_pc_277e9
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_27858, label %dec_label_pc_27847

dec_label_pc_27847:                               ; preds = %dec_label_pc_27815
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_27867

dec_label_pc_27858:                               ; preds = %dec_label_pc_27815
  call void @printLine(ptr @global_var_b5290)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_27867

dec_label_pc_27867:                               ; preds = %dec_label_pc_27858, %dec_label_pc_27847, %dec_label_pc_277e9
  %8 = load i32, ptr @global_var_ec15c, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_27885, label %dec_label_pc_27871

dec_label_pc_27871:                               ; preds = %dec_label_pc_27867
  call void @printLine(ptr @global_var_b52c0)
  br label %dec_label_pc_27944

dec_label_pc_27885:                               ; preds = %dec_label_pc_27867
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %10 = call ptr @malloc(i32 40)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %13, label %dec_label_pc_278ad, label %dec_label_pc_2789a

dec_label_pc_2789a:                               ; preds = %dec_label_pc_27885
  call void @exit(i32 -1)
  unreachable

dec_label_pc_278ad:                               ; preds = %dec_label_pc_27885, %dec_label_pc_278ad
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %14 = mul i64 %indvars.iv5.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_278d1, label %dec_label_pc_278ad

dec_label_pc_278d1:                               ; preds = %dec_label_pc_278ad
  %17 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %17, label %dec_label_pc_27929, label %dec_label_pc_278dd

dec_label_pc_278dd:                               ; preds = %dec_label_pc_278d1
  %18 = sext i32 %stack_var_-48.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %11
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_27900

dec_label_pc_27900:                               ; preds = %dec_label_pc_27900, %dec_label_pc_278dd
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %11
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27938, label %dec_label_pc_27900

dec_label_pc_27929:                               ; preds = %dec_label_pc_278d1
  call void @printLine(ptr @global_var_b52d8)
  br label %dec_label_pc_27938

dec_label_pc_27938:                               ; preds = %dec_label_pc_27900, %dec_label_pc_27929
  call void @free(ptr %10)
  br label %dec_label_pc_27944

dec_label_pc_27944:                               ; preds = %dec_label_pc_27938, %dec_label_pc_27871
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_27959, label %dec_label_pc_27954

dec_label_pc_27954:                               ; preds = %dec_label_pc_27944
  call void @__stack_chk_fail()
  br label %dec_label_pc_27959

dec_label_pc_27959:                               ; preds = %dec_label_pc_27954, %dec_label_pc_27944
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

