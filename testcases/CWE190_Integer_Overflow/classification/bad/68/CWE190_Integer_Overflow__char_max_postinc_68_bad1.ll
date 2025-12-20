@CWE190_Integer_Overflow__char_max_postinc_68_badData = external local_unnamed_addr global i8
@global_var_8ca93 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10b8b:
  store i8 127, ptr @CWE190_Integer_Overflow__char_max_postinc_68_badData, align 1
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_10c2b:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_max_postinc_68_badData, align 1
  %1 = add i8 %0, 1
  call void @printHexCharLine(i8 %1)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

