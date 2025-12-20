@global_var_b63e8 = external constant [32 x i8]
@global_var_b6408 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b63e0 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2331f:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-68.0.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-68.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2337a, label %dec_label_pc_2334f

dec_label_pc_2334f:                               ; preds = %dec_label_pc_2331f
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b63e0)
  store i32 -1, ptr %stack_var_-68.0.reg2mem, align 4
  br label %dec_label_pc_2337a

dec_label_pc_2337a:                               ; preds = %dec_label_pc_2331f, %dec_label_pc_2334f
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-68.0.reload = load i32, ptr %stack_var_-68.0.reg2mem, align 4
  %6 = call i32 @globalReturnsTrueOrFalse()
  %7 = icmp eq i32 %6, 0
  %8 = icmp slt i32 %stack_var_-68.0.reload, 0
  br i1 %7, label %dec_label_pc_233fd, label %dec_label_pc_23388

dec_label_pc_23388:                               ; preds = %dec_label_pc_2337a
  br i1 %8, label %dec_label_pc_233ec, label %dec_label_pc_233b7

dec_label_pc_233b7:                               ; preds = %dec_label_pc_23388
  %9 = sext i32 %stack_var_-68.0.reload to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %5, -48
  %12 = add i64 %10, %11
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_233cd

dec_label_pc_233cd:                               ; preds = %dec_label_pc_233cd, %dec_label_pc_233b7
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %14 = mul i64 %indvars.iv6.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_23477, label %dec_label_pc_233cd

dec_label_pc_233ec:                               ; preds = %dec_label_pc_23388
  call void @printLine(ptr @global_var_b63e8)
  br label %dec_label_pc_23477

dec_label_pc_233fd:                               ; preds = %dec_label_pc_2337a
  br i1 %8, label %dec_label_pc_23466, label %dec_label_pc_23434

dec_label_pc_23434:                               ; preds = %dec_label_pc_233fd
  %18 = sext i32 %stack_var_-68.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %5, -48
  %21 = add i64 %19, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2344a

dec_label_pc_2344a:                               ; preds = %dec_label_pc_2344a, %dec_label_pc_23434
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %20
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23477, label %dec_label_pc_2344a

dec_label_pc_23466:                               ; preds = %dec_label_pc_233fd
  call void @printLine(ptr @global_var_b6408)
  br label %dec_label_pc_23477

dec_label_pc_23477:                               ; preds = %dec_label_pc_233cd, %dec_label_pc_2344a, %dec_label_pc_23466, %dec_label_pc_233ec
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_2348c, label %dec_label_pc_23487

dec_label_pc_23487:                               ; preds = %dec_label_pc_23477
  call void @__stack_chk_fail()
  br label %dec_label_pc_2348c

dec_label_pc_2348c:                               ; preds = %dec_label_pc_23487, %dec_label_pc_23477
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

