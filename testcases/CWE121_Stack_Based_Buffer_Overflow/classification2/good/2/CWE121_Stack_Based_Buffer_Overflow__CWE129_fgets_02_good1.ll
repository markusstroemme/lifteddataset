@global_var_b51c0 = external constant [16 x i8]
@global_var_b51f0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_16c43:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_16cb7.thread, label %dec_label_pc_16cb7

dec_label_pc_16cb7.thread:                        ; preds = %dec_label_pc_16c43
  call void @printLine(ptr @global_var_b51c0)
  br label %dec_label_pc_16d1d

dec_label_pc_16cb7:                               ; preds = %dec_label_pc_16c43
  %5 = call i32 @atoi(ptr nonnull %2)
  %6 = icmp ugt i32 %5, 9
  br i1 %6, label %dec_label_pc_16d1d, label %dec_label_pc_16ceb

dec_label_pc_16ceb:                               ; preds = %dec_label_pc_16cb7
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = sext i32 %5 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %7, -64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_16d01

dec_label_pc_16d01:                               ; preds = %dec_label_pc_16d01, %dec_label_pc_16ceb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_16d2c, label %dec_label_pc_16d01

dec_label_pc_16d1d:                               ; preds = %dec_label_pc_16cb7.thread, %dec_label_pc_16cb7
  call void @printLine(ptr @global_var_b51f0)
  br label %dec_label_pc_16d2c

dec_label_pc_16d2c:                               ; preds = %dec_label_pc_16d01, %dec_label_pc_16d1d
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_16d41, label %dec_label_pc_16d3c

dec_label_pc_16d3c:                               ; preds = %dec_label_pc_16d2c
  call void @__stack_chk_fail()
  br label %dec_label_pc_16d41

dec_label_pc_16d41:                               ; preds = %dec_label_pc_16d3c, %dec_label_pc_16d2c
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

