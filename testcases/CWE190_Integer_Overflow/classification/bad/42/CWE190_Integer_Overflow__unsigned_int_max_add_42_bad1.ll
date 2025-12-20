@global_var_70d9e = external constant [4 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1fda7:
  ret i32 -1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1fdbe:
  %0 = call i32 @anon1(i32 0)
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

