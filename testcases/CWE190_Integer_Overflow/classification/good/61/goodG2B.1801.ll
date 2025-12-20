@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_db92:
  %0 = call i16 @anon0(i16 0)
  %1 = mul i16 %0, %0
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_dcad:
  ret i16 2
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

