@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_45_goodB2GData = external local_unnamed_addr global i32
@global_var_b6908 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6900 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_26867:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_45_goodB2GData, align 4
  %2 = icmp ugt i32 %1, 9
  br i1 %2, label %dec_label_pc_268f1, label %dec_label_pc_268bf

dec_label_pc_268bf:                               ; preds = %dec_label_pc_26867
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_268d5

dec_label_pc_268d5:                               ; preds = %dec_label_pc_268d5, %dec_label_pc_268bf
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26900, label %dec_label_pc_268d5

dec_label_pc_268f1:                               ; preds = %dec_label_pc_26867
  call void @printLine(ptr @global_var_b6908)
  br label %dec_label_pc_26900

dec_label_pc_26900:                               ; preds = %dec_label_pc_268d5, %dec_label_pc_268f1
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_26915, label %dec_label_pc_26910

dec_label_pc_26910:                               ; preds = %dec_label_pc_26900
  call void @__stack_chk_fail()
  br label %dec_label_pc_26915

dec_label_pc_26915:                               ; preds = %dec_label_pc_26910, %dec_label_pc_26900
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_26917:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6900)
  store i32 -1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_45_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_26983, label %dec_label_pc_2697e

dec_label_pc_2697e:                               ; preds = %dec_label_pc_26917
  call void @__stack_chk_fail()
  br label %dec_label_pc_26983

dec_label_pc_26983:                               ; preds = %dec_label_pc_2697e, %dec_label_pc_26917
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

