@global_var_8c83e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_68431:
  %0 = add i32 %data, 1
  call void @printUnsignedLine(i32 %0)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_68457:
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

