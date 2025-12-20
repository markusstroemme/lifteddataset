@CWE190_Integer_Overflow__unsigned_int_max_square_68_badData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_28827:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_68_badData, align 4
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_288d6:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_68_badData, align 4
  %1 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

