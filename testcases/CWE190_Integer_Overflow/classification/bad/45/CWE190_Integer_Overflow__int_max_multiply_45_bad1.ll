@CWE190_Integer_Overflow__int_max_multiply_45_badData = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4b425:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_max_multiply_45_badData, align 4
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_4b452, label %dec_label_pc_4b440

dec_label_pc_4b440:                               ; preds = %dec_label_pc_4b425
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4b452

dec_label_pc_4b452:                               ; preds = %dec_label_pc_4b440, %dec_label_pc_4b425
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4b455:
  store i32 2147483647, ptr @CWE190_Integer_Overflow__int_max_multiply_45_badData, align 4
  call void @anon1()
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

