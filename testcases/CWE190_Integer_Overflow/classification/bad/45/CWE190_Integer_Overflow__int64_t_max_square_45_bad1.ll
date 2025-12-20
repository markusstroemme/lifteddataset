@CWE190_Integer_Overflow__int64_t_max_square_45_badData = external local_unnamed_addr global i64
@global_var_95449 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1abb5:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_max_square_45_badData, align 8
  %1 = mul i64 %0, %0
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1abe7:
  store i64 9223372036854775807, ptr @CWE190_Integer_Overflow__int64_t_max_square_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

