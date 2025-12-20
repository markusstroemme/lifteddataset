@global_var_b6c04 = external constant [3 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData = external local_unnamed_addr global i32
@global_var_b6c28 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_28b5d:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6c04, ptr nonnull %stack_var_-20)
  %3 = load i32, ptr %stack_var_-20, align 4
  store i32 %3, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4
  call void @anon0()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_28bc9, label %dec_label_pc_28bc4

dec_label_pc_28bc4:                               ; preds = %dec_label_pc_28b5d
  call void @__stack_chk_fail()
  br label %dec_label_pc_28bc9

dec_label_pc_28bc9:                               ; preds = %dec_label_pc_28bc4, %dec_label_pc_28b5d
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_28d3e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4
  %2 = icmp ugt i32 %1, 9
  br i1 %2, label %dec_label_pc_28dc8, label %dec_label_pc_28d96

dec_label_pc_28d96:                               ; preds = %dec_label_pc_28d3e
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_28dac

dec_label_pc_28dac:                               ; preds = %dec_label_pc_28dac, %dec_label_pc_28d96
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28dd7, label %dec_label_pc_28dac

dec_label_pc_28dc8:                               ; preds = %dec_label_pc_28d3e
  call void @printLine(ptr @global_var_b6c28)
  br label %dec_label_pc_28dd7

dec_label_pc_28dd7:                               ; preds = %dec_label_pc_28dac, %dec_label_pc_28dc8
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_28dec, label %dec_label_pc_28de7

dec_label_pc_28de7:                               ; preds = %dec_label_pc_28dd7
  call void @__stack_chk_fail()
  br label %dec_label_pc_28dec

dec_label_pc_28dec:                               ; preds = %dec_label_pc_28de7, %dec_label_pc_28dd7
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

