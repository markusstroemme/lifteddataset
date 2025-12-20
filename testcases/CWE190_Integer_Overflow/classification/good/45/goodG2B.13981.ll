@CWE190_Integer_Overflow__short_rand_multiply_45_goodG2BData = external local_unnamed_addr global i16
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3d9c0:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_goodG2BData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_3d9f3, label %dec_label_pc_3d9de

dec_label_pc_3d9de:                               ; preds = %dec_label_pc_3d9c0
  %2 = mul i16 %0, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_3d9f3

dec_label_pc_3d9f3:                               ; preds = %dec_label_pc_3d9de, %dec_label_pc_3d9c0
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3d9f6:
  store i16 2, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_goodG2BData, align 2
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

