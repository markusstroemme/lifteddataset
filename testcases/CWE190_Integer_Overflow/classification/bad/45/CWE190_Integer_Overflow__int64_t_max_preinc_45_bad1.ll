@CWE190_Integer_Overflow__int64_t_max_preinc_45_badData = external local_unnamed_addr global i64
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1dc92:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_max_preinc_45_badData, align 8
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1dcc5:
  store i64 9223372036854775807, ptr @CWE190_Integer_Overflow__int64_t_max_preinc_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

