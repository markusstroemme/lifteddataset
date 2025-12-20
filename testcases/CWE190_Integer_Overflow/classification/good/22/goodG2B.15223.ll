@CWE190_Integer_Overflow__short_fscanf_preinc_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_50c45:
  store i32 1, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_22_goodG2BGlobal, align 4
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_50d98:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_50dd2, label %dec_label_pc_50db4

dec_label_pc_50db4:                               ; preds = %dec_label_pc_50d98
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_50dd2

dec_label_pc_50dd2:                               ; preds = %dec_label_pc_50db4, %dec_label_pc_50d98
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

