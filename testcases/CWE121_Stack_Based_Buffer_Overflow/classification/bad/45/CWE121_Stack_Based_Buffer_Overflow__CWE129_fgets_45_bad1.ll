@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData = external local_unnamed_addr global i32
@global_var_b5b88 = external constant [32 x i8]
@global_var_b5ba8 = external constant [16 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1d7a2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %dec_label_pc_1d826, label %dec_label_pc_1d7f4

dec_label_pc_1d7f4:                               ; preds = %dec_label_pc_1d7a2
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1d80a

dec_label_pc_1d80a:                               ; preds = %dec_label_pc_1d80a, %dec_label_pc_1d7f4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d835, label %dec_label_pc_1d80a

dec_label_pc_1d826:                               ; preds = %dec_label_pc_1d7a2
  call void @printLine(ptr @global_var_b5b88)
  br label %dec_label_pc_1d835

dec_label_pc_1d835:                               ; preds = %dec_label_pc_1d80a, %dec_label_pc_1d826
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1d84a, label %dec_label_pc_1d845

dec_label_pc_1d845:                               ; preds = %dec_label_pc_1d835
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d84a

dec_label_pc_1d84a:                               ; preds = %dec_label_pc_1d845, %dec_label_pc_1d835
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1d84c:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1d8b1, label %dec_label_pc_1d8a0

dec_label_pc_1d8a0:                               ; preds = %dec_label_pc_1d84c
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1d8c0

dec_label_pc_1d8b1:                               ; preds = %dec_label_pc_1d84c
  call void @printLine(ptr @global_var_b5ba8)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1d8c0

dec_label_pc_1d8c0:                               ; preds = %dec_label_pc_1d8b1, %dec_label_pc_1d8a0
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 %stack_var_-36.0.reload, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4
  call void @anon1()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1d8e8, label %dec_label_pc_1d8e3

dec_label_pc_1d8e3:                               ; preds = %dec_label_pc_1d8c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d8e8

dec_label_pc_1d8e8:                               ; preds = %dec_label_pc_1d8e3, %dec_label_pc_1d8c0
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

