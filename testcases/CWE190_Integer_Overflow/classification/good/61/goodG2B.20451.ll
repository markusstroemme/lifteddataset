@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_644b8:
  %0 = call i32 @anon0(i32 0)
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_64573:
  ret i32 2
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

