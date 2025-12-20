@global_var_b5904 = external constant [16 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_b5950 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1c05a:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1c0bf, label %dec_label_pc_1c0ae

dec_label_pc_1c0ae:                               ; preds = %dec_label_pc_1c05a
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1c0ce

dec_label_pc_1c0bf:                               ; preds = %dec_label_pc_1c05a
  call void @printLine(ptr @global_var_b5904)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1c0ce

dec_label_pc_1c0ce:                               ; preds = %dec_label_pc_1c0bf, %dec_label_pc_1c0ae
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1c0f7, label %dec_label_pc_1c0f2

dec_label_pc_1c0f2:                               ; preds = %dec_label_pc_1c0ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c0f7

dec_label_pc_1c0f7:                               ; preds = %dec_label_pc_1c0f2, %dec_label_pc_1c0ce
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1c2c8:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1c367, label %dec_label_pc_1c2f0

dec_label_pc_1c2f0:                               ; preds = %dec_label_pc_1c2c8
  %3 = icmp ugt i32 %data, 9
  br i1 %3, label %dec_label_pc_1c356, label %dec_label_pc_1c324

dec_label_pc_1c324:                               ; preds = %dec_label_pc_1c2f0
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1c33a

dec_label_pc_1c33a:                               ; preds = %dec_label_pc_1c33a, %dec_label_pc_1c324
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c367, label %dec_label_pc_1c33a

dec_label_pc_1c356:                               ; preds = %dec_label_pc_1c2f0
  call void @printLine(ptr @global_var_b5950)
  br label %dec_label_pc_1c367

dec_label_pc_1c367:                               ; preds = %dec_label_pc_1c33a, %dec_label_pc_1c356, %dec_label_pc_1c2c8
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1c37c, label %dec_label_pc_1c377

dec_label_pc_1c377:                               ; preds = %dec_label_pc_1c367
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c37c

dec_label_pc_1c37c:                               ; preds = %dec_label_pc_1c377, %dec_label_pc_1c367
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

