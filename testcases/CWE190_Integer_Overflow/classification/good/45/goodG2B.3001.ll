@CWE190_Integer_Overflow__int_rand_multiply_45_goodG2BData = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12b8f:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_multiply_45_goodG2BData, align 4
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_12bbc, label %dec_label_pc_12baa

dec_label_pc_12baa:                               ; preds = %dec_label_pc_12b8f
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_12bbc

dec_label_pc_12bbc:                               ; preds = %dec_label_pc_12baa, %dec_label_pc_12b8f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_12bbf:
  store i32 2, ptr @CWE190_Integer_Overflow__int_rand_multiply_45_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

