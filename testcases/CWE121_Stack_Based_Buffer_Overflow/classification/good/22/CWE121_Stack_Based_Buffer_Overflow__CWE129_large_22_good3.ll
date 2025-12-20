@CWE121_Stack_Based_Buffer_Overflow__CWE129_large_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_b72c0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2d52c:
  store i32 1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_22_goodG2BGlobal, align 4
  call void @anon0(i32 7)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2d7b1:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_22_goodG2BGlobal, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2d848, label %dec_label_pc_2d7d9

dec_label_pc_2d7d9:                               ; preds = %dec_label_pc_2d7b1
  %3 = icmp slt i32 %data, 0
  br i1 %3, label %dec_label_pc_2d839, label %dec_label_pc_2d807

dec_label_pc_2d807:                               ; preds = %dec_label_pc_2d7d9
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2d81d

dec_label_pc_2d81d:                               ; preds = %dec_label_pc_2d81d, %dec_label_pc_2d807
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2d848, label %dec_label_pc_2d81d

dec_label_pc_2d839:                               ; preds = %dec_label_pc_2d7d9
  call void @printLine(ptr @global_var_b72c0)
  br label %dec_label_pc_2d848

dec_label_pc_2d848:                               ; preds = %dec_label_pc_2d81d, %dec_label_pc_2d839, %dec_label_pc_2d7b1
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_2d85d, label %dec_label_pc_2d858

dec_label_pc_2d858:                               ; preds = %dec_label_pc_2d848
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d85d

dec_label_pc_2d85d:                               ; preds = %dec_label_pc_2d858, %dec_label_pc_2d848
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

declare i64 @__readfsqword(i64) local_unnamed_addr

