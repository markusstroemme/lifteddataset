@CWE190_Integer_Overflow__char_max_preinc_45_goodG2BData = external local_unnamed_addr global i8
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fa99:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_max_preinc_45_goodG2BData, align 1
  %1 = add i8 %0, 1
  call void @printHexCharLine(i8 %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_face:
  store i8 2, ptr @CWE190_Integer_Overflow__char_max_preinc_45_goodG2BData, align 1
  call void @anon0()
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

