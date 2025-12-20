@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3786f:
  %0 = call i32 @anon0(i32 0)
  %1 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %1)
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_37982:
  ret i32 2
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

