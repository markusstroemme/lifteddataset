@global_var_b52e8 = external constant [16 x i8]
@global_var_b52f8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1796a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef018, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17a61, label %dec_label_pc_17996

dec_label_pc_17996:                               ; preds = %dec_label_pc_1796a
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_179d9, label %dec_label_pc_179c8

dec_label_pc_179c8:                               ; preds = %dec_label_pc_17996
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_179e8

dec_label_pc_179d9:                               ; preds = %dec_label_pc_17996
  call void @printLine(ptr @global_var_b52e8)
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_179e8

dec_label_pc_179e8:                               ; preds = %dec_label_pc_179d9, %dec_label_pc_179c8
  %.pr = load i32, ptr @global_var_ef018, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_17a61, label %dec_label_pc_179f2

dec_label_pc_179f2:                               ; preds = %dec_label_pc_179e8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %9 = icmp slt i32 %stack_var_-80.0.ph.reload, 0
  br i1 %9, label %dec_label_pc_17a52, label %dec_label_pc_17a20

dec_label_pc_17a20:                               ; preds = %dec_label_pc_179f2
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = sext i32 %stack_var_-80.0.ph.reload to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %10, -64
  %14 = add i64 %12, %13
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_17a36

dec_label_pc_17a36:                               ; preds = %dec_label_pc_17a36, %dec_label_pc_17a20
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %13
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_17a61, label %dec_label_pc_17a36

dec_label_pc_17a52:                               ; preds = %dec_label_pc_179f2
  call void @printLine(ptr @global_var_b52f8)
  br label %dec_label_pc_17a61

dec_label_pc_17a61:                               ; preds = %dec_label_pc_17a36, %dec_label_pc_1796a, %dec_label_pc_17a52, %dec_label_pc_179e8
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_17a76, label %dec_label_pc_17a71

dec_label_pc_17a71:                               ; preds = %dec_label_pc_17a61
  call void @__stack_chk_fail()
  br label %dec_label_pc_17a76

dec_label_pc_17a76:                               ; preds = %dec_label_pc_17a71, %dec_label_pc_17a61
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

