@global_var_b5520 = external constant [16 x i8]
@global_var_b5530 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_19323:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1941a, label %dec_label_pc_1934f

dec_label_pc_1934f:                               ; preds = %dec_label_pc_19323
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_19392, label %dec_label_pc_19381

dec_label_pc_19381:                               ; preds = %dec_label_pc_1934f
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_193a1

dec_label_pc_19392:                               ; preds = %dec_label_pc_1934f
  call void @printLine(ptr @global_var_b5520)
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_193a1

dec_label_pc_193a1:                               ; preds = %dec_label_pc_19392, %dec_label_pc_19381
  %.pr = load i32, ptr @global_var_ef080, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_1941a, label %dec_label_pc_193ab

dec_label_pc_193ab:                               ; preds = %dec_label_pc_193a1
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %9 = icmp slt i32 %stack_var_-80.0.ph.reload, 0
  br i1 %9, label %dec_label_pc_1940b, label %dec_label_pc_193d9

dec_label_pc_193d9:                               ; preds = %dec_label_pc_193ab
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = sext i32 %stack_var_-80.0.ph.reload to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %10, -64
  %14 = add i64 %12, %13
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_193ef

dec_label_pc_193ef:                               ; preds = %dec_label_pc_193ef, %dec_label_pc_193d9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %13
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1941a, label %dec_label_pc_193ef

dec_label_pc_1940b:                               ; preds = %dec_label_pc_193ab
  call void @printLine(ptr @global_var_b5530)
  br label %dec_label_pc_1941a

dec_label_pc_1941a:                               ; preds = %dec_label_pc_193ef, %dec_label_pc_19323, %dec_label_pc_1940b, %dec_label_pc_193a1
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_1942f, label %dec_label_pc_1942a

dec_label_pc_1942a:                               ; preds = %dec_label_pc_1941a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1942f

dec_label_pc_1942f:                               ; preds = %dec_label_pc_1942a, %dec_label_pc_1941a
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

