@CWE190_Integer_Overflow__short_rand_multiply_68_goodG2BData = external local_unnamed_addr global i16
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3f127:
  store i16 2, ptr @CWE190_Integer_Overflow__short_rand_multiply_68_goodG2BData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3f21b:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_multiply_68_goodG2BData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_3f24e, label %dec_label_pc_3f239

dec_label_pc_3f239:                               ; preds = %dec_label_pc_3f21b
  %2 = mul i16 %0, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_3f24e

dec_label_pc_3f24e:                               ; preds = %dec_label_pc_3f239, %dec_label_pc_3f21b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

