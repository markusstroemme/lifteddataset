@global_var_b5600 = external constant [16 x i8]
@global_var_b5630 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_19f10:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %stack_var_-84.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %2, label %dec_label_pc_19f94, label %dec_label_pc_19f40

dec_label_pc_19f40:                               ; preds = %dec_label_pc_19f10
  br i1 %6, label %dec_label_pc_19f83, label %dec_label_pc_19f72

dec_label_pc_19f72:                               ; preds = %dec_label_pc_19f40
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19fe6

dec_label_pc_19f83:                               ; preds = %dec_label_pc_19f40
  call void @printLine(ptr @global_var_b5600)
  store i32 -1, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19fe6

dec_label_pc_19f94:                               ; preds = %dec_label_pc_19f10
  br i1 %6, label %dec_label_pc_19fd7, label %dec_label_pc_19fc6

dec_label_pc_19fc6:                               ; preds = %dec_label_pc_19f94
  %8 = call i32 @atoi(ptr nonnull %4)
  store i32 %8, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19fe6

dec_label_pc_19fd7:                               ; preds = %dec_label_pc_19f94
  call void @printLine(ptr @global_var_b5600)
  store i32 -1, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19fe6

dec_label_pc_19fe6:                               ; preds = %dec_label_pc_19fd7, %dec_label_pc_19fc6, %dec_label_pc_19f83, %dec_label_pc_19f72
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-84.0.reload = load i32, ptr %stack_var_-84.0.reg2mem, align 4
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  %12 = icmp ugt i32 %stack_var_-84.0.reload, 9
  br i1 %11, label %dec_label_pc_1a06e, label %dec_label_pc_19ff4

dec_label_pc_19ff4:                               ; preds = %dec_label_pc_19fe6
  br i1 %12, label %dec_label_pc_1a05d, label %dec_label_pc_1a028

dec_label_pc_1a028:                               ; preds = %dec_label_pc_19ff4
  %13 = sext i32 %stack_var_-84.0.reload to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %9, -64
  %16 = add i64 %14, %15
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br label %dec_label_pc_1a03e

dec_label_pc_1a03e:                               ; preds = %dec_label_pc_1a03e, %dec_label_pc_1a028
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %18 = mul i64 %indvars.iv8.reload, 4
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_1a0e5, label %dec_label_pc_1a03e

dec_label_pc_1a05d:                               ; preds = %dec_label_pc_19ff4
  call void @printLine(ptr @global_var_b5630)
  br label %dec_label_pc_1a0e5

dec_label_pc_1a06e:                               ; preds = %dec_label_pc_19fe6
  br i1 %12, label %dec_label_pc_1a0d4, label %dec_label_pc_1a0a2

dec_label_pc_1a0a2:                               ; preds = %dec_label_pc_1a06e
  %22 = sext i32 %stack_var_-84.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %9, -64
  %25 = add i64 %23, %24
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1a0b8

dec_label_pc_1a0b8:                               ; preds = %dec_label_pc_1a0b8, %dec_label_pc_1a0a2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1a0e5, label %dec_label_pc_1a0b8

dec_label_pc_1a0d4:                               ; preds = %dec_label_pc_1a06e
  call void @printLine(ptr @global_var_b5630)
  br label %dec_label_pc_1a0e5

dec_label_pc_1a0e5:                               ; preds = %dec_label_pc_1a03e, %dec_label_pc_1a0b8, %dec_label_pc_1a0d4, %dec_label_pc_1a05d
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_1a0fa, label %dec_label_pc_1a0f5

dec_label_pc_1a0f5:                               ; preds = %dec_label_pc_1a0e5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a0fa

dec_label_pc_1a0fa:                               ; preds = %dec_label_pc_1a0f5, %dec_label_pc_1a0e5
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

