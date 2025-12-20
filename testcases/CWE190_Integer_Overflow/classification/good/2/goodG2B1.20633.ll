@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_65185:
  call void @printUnsignedLine(i32 3)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

