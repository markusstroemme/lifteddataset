@CWE190_Integer_Overflow__int_max_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4aabe:
  store i32 1, ptr @CWE190_Integer_Overflow__int_max_multiply_22_badGlobal, align 4
  call void @anon1(i32 2147483647)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4abab:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_max_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_4abdc, label %dec_label_pc_4abca

dec_label_pc_4abca:                               ; preds = %dec_label_pc_4abab
  %3 = mul i32 %data, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4abdc

dec_label_pc_4abdc:                               ; preds = %dec_label_pc_4abca, %dec_label_pc_4abab
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

