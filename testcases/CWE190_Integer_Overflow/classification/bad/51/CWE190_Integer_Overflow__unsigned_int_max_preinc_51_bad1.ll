@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_63e15:
  call void @anon1(i32 -1)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_63ea9:
  %0 = add i32 %data, 1
  call void @printUnsignedLine(i32 %0)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

