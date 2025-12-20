@global_var_b56c8 = external constant [16 x i8]
@global_var_b56f8 = external constant [21 x i8]
@global_var_b5710 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef084 = external local_unnamed_addr global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1a892:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1a911, label %dec_label_pc_1a8bf

dec_label_pc_1a8bf:                               ; preds = %dec_label_pc_1a892
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_ef090, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_1a902, label %dec_label_pc_1a8f1

dec_label_pc_1a8f1:                               ; preds = %dec_label_pc_1a8bf
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1a911thread-pre-split

dec_label_pc_1a902:                               ; preds = %dec_label_pc_1a8bf
  call void @printLine(ptr @global_var_b56c8)
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1a911thread-pre-split

dec_label_pc_1a911thread-pre-split:               ; preds = %dec_label_pc_1a8f1, %dec_label_pc_1a902
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_ef084, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_1a911

dec_label_pc_1a911:                               ; preds = %dec_label_pc_1a911thread-pre-split, %dec_label_pc_1a892
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = icmp eq i32 %.reload, 5
  br i1 %9, label %dec_label_pc_1a92d, label %dec_label_pc_1a91c

dec_label_pc_1a91c:                               ; preds = %dec_label_pc_1a911
  call void @printLine(ptr @global_var_b56f8)
  br label %dec_label_pc_1a9a4

dec_label_pc_1a92d:                               ; preds = %dec_label_pc_1a911
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %10 = icmp ugt i32 %stack_var_-80.0.reload, 9
  br i1 %10, label %dec_label_pc_1a993, label %dec_label_pc_1a961

dec_label_pc_1a961:                               ; preds = %dec_label_pc_1a92d
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %stack_var_-80.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %11, -64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1a977

dec_label_pc_1a977:                               ; preds = %dec_label_pc_1a977, %dec_label_pc_1a961
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1a9a4, label %dec_label_pc_1a977

dec_label_pc_1a993:                               ; preds = %dec_label_pc_1a92d
  call void @printLine(ptr @global_var_b5710)
  br label %dec_label_pc_1a9a4

dec_label_pc_1a9a4:                               ; preds = %dec_label_pc_1a977, %dec_label_pc_1a993, %dec_label_pc_1a91c
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_1a9b9, label %dec_label_pc_1a9b4

dec_label_pc_1a9b4:                               ; preds = %dec_label_pc_1a9a4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a9b9

dec_label_pc_1a9b9:                               ; preds = %dec_label_pc_1a9b4, %dec_label_pc_1a9a4
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

