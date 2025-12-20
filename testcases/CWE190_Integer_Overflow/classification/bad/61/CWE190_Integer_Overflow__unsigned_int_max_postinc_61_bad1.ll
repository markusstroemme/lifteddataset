@global_var_8ca9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_64481:
  %0 = call i32 @anon1(i32 0)
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_6455c:
  ret i32 -1
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

