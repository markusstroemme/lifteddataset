@global_var_b6c04 = external constant [3 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData = external local_unnamed_addr global i32
@global_var_b6c08 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_28abf:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6c04, ptr nonnull %stack_var_-20)
  %3 = load i32, ptr %stack_var_-20, align 4
  store i32 %3, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData, align 4
  call void @anon1()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_28b2b, label %dec_label_pc_28b26

dec_label_pc_28b26:                               ; preds = %dec_label_pc_28abf
  call void @__stack_chk_fail()
  br label %dec_label_pc_28b2b

dec_label_pc_28b2b:                               ; preds = %dec_label_pc_28b26, %dec_label_pc_28abf
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_28bea:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %dec_label_pc_28c6e, label %dec_label_pc_28c3c

dec_label_pc_28c3c:                               ; preds = %dec_label_pc_28bea
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_28c52

dec_label_pc_28c52:                               ; preds = %dec_label_pc_28c52, %dec_label_pc_28c3c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28c7d, label %dec_label_pc_28c52

dec_label_pc_28c6e:                               ; preds = %dec_label_pc_28bea
  call void @printLine(ptr @global_var_b6c08)
  br label %dec_label_pc_28c7d

dec_label_pc_28c7d:                               ; preds = %dec_label_pc_28c52, %dec_label_pc_28c6e
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_28c92, label %dec_label_pc_28c8d

dec_label_pc_28c8d:                               ; preds = %dec_label_pc_28c7d
  call void @__stack_chk_fail()
  br label %dec_label_pc_28c92

dec_label_pc_28c92:                               ; preds = %dec_label_pc_28c8d, %dec_label_pc_28c7d
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

