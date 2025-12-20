@CWE190_Integer_Overflow__short_rand_square_68_goodG2BData = external local_unnamed_addr global i16
@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e864:
  store i16 2, ptr @CWE190_Integer_Overflow__short_rand_square_68_goodG2BData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_e956:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_square_68_goodG2BData, align 2
  %1 = mul i16 %0, %0
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

