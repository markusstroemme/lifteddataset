@global_var_b5ba8 = external constant [16 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData = external local_unnamed_addr global i32
@global_var_b5bb8 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1d9c4:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4
  %2 = icmp ugt i32 %1, 9
  br i1 %2, label %dec_label_pc_1da4e, label %dec_label_pc_1da1c

dec_label_pc_1da1c:                               ; preds = %dec_label_pc_1d9c4
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1da32

dec_label_pc_1da32:                               ; preds = %dec_label_pc_1da32, %dec_label_pc_1da1c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1da5d, label %dec_label_pc_1da32

dec_label_pc_1da4e:                               ; preds = %dec_label_pc_1d9c4
  call void @printLine(ptr @global_var_b5bb8)
  br label %dec_label_pc_1da5d

dec_label_pc_1da5d:                               ; preds = %dec_label_pc_1da32, %dec_label_pc_1da4e
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1da72, label %dec_label_pc_1da6d

dec_label_pc_1da6d:                               ; preds = %dec_label_pc_1da5d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1da72

dec_label_pc_1da72:                               ; preds = %dec_label_pc_1da6d, %dec_label_pc_1da5d
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1da74:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1dad9, label %dec_label_pc_1dac8

dec_label_pc_1dac8:                               ; preds = %dec_label_pc_1da74
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1dae8

dec_label_pc_1dad9:                               ; preds = %dec_label_pc_1da74
  call void @printLine(ptr @global_var_b5ba8)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1dae8

dec_label_pc_1dae8:                               ; preds = %dec_label_pc_1dad9, %dec_label_pc_1dac8
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 %stack_var_-36.0.reload, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4
  call void @anon0()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1db10, label %dec_label_pc_1db0b

dec_label_pc_1db0b:                               ; preds = %dec_label_pc_1dae8
  call void @__stack_chk_fail()
  br label %dec_label_pc_1db10

dec_label_pc_1db10:                               ; preds = %dec_label_pc_1db0b, %dec_label_pc_1dae8
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

