@CWE190_Integer_Overflow__unsigned_int_max_multiply_45_goodG2BData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_23b96:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_45_goodG2BData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_23bc3, label %dec_label_pc_23bb1

dec_label_pc_23bb1:                               ; preds = %dec_label_pc_23b96
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_23bc3

dec_label_pc_23bc3:                               ; preds = %dec_label_pc_23bb1, %dec_label_pc_23b96
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23bc6:
  store i32 2, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_45_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

