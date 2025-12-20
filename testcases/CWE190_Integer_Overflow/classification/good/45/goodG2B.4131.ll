@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodG2BData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17190:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodG2BData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_171bd, label %dec_label_pc_171ab

dec_label_pc_171ab:                               ; preds = %dec_label_pc_17190
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_171bd

dec_label_pc_171bd:                               ; preds = %dec_label_pc_171ab, %dec_label_pc_17190
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_171c0:
  store i32 2, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

