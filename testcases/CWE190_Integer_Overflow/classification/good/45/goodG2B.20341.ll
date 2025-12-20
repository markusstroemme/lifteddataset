@CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodG2BData = external local_unnamed_addr global i32
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_63d27:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodG2BData, align 4
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_63d53:
  store i32 2, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

