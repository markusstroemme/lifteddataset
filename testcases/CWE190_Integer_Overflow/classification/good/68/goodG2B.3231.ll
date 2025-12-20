@CWE190_Integer_Overflow__int_rand_multiply_68_goodG2BData = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_142a9:
  store i32 2, ptr @CWE190_Integer_Overflow__int_rand_multiply_68_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1439f:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_multiply_68_goodG2BData, align 4
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_143cc, label %dec_label_pc_143ba

dec_label_pc_143ba:                               ; preds = %dec_label_pc_1439f
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_143cc

dec_label_pc_143cc:                               ; preds = %dec_label_pc_143ba, %dec_label_pc_1439f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

