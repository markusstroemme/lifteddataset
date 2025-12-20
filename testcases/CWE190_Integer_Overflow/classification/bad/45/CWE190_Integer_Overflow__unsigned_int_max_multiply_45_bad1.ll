@CWE190_Integer_Overflow__unsigned_int_max_multiply_45_badData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_23b36:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_45_badData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_23b63, label %dec_label_pc_23b51

dec_label_pc_23b51:                               ; preds = %dec_label_pc_23b36
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_23b63

dec_label_pc_23b63:                               ; preds = %dec_label_pc_23b51, %dec_label_pc_23b36
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_23b66:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_45_badData, align 4
  call void @anon1()
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

