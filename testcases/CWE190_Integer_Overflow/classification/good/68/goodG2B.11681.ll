@CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodG2BData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_32fc9:
  store i32 2, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_330bf:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodG2BData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_330ec, label %dec_label_pc_330da

dec_label_pc_330da:                               ; preds = %dec_label_pc_330bf
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_330ec

dec_label_pc_330ec:                               ; preds = %dec_label_pc_330da, %dec_label_pc_330bf
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

