@global_var_bc528 = external constant [16 x i8]
@global_var_bc558 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7b384:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_7b405.thread, label %dec_label_pc_7b405

dec_label_pc_7b405.thread:                        ; preds = %dec_label_pc_7b384
  call void @printLine(ptr @global_var_bc528)
  br label %dec_label_pc_7b474

dec_label_pc_7b405:                               ; preds = %dec_label_pc_7b384
  %7 = call i32 @atoi(ptr nonnull %2)
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_7b474, label %dec_label_pc_7b442

dec_label_pc_7b442:                               ; preds = %dec_label_pc_7b405
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = sext i32 %7 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %9, -64
  %13 = add i64 %11, %12
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7b458

dec_label_pc_7b458:                               ; preds = %dec_label_pc_7b458, %dec_label_pc_7b442
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %12
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7b483, label %dec_label_pc_7b458

dec_label_pc_7b474:                               ; preds = %dec_label_pc_7b405.thread, %dec_label_pc_7b405
  call void @printLine(ptr @global_var_bc558)
  br label %dec_label_pc_7b483

dec_label_pc_7b483:                               ; preds = %dec_label_pc_7b458, %dec_label_pc_7b474
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_7b498, label %dec_label_pc_7b493

dec_label_pc_7b493:                               ; preds = %dec_label_pc_7b483
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7b498

dec_label_pc_7b498:                               ; preds = %dec_label_pc_7b493, %dec_label_pc_7b483
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

