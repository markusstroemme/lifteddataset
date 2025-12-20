@global_var_8c833 = external constant [6 x i8]

define i8 @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_f7b7:
  ret i8 127
}

define void @anon0() local_unnamed_addr {
dec_label_pc_f7ce:
  %0 = call i8 @anon1(i8 32)
  %1 = add i8 %0, 1
  call void @printHexCharLine(i8 %1)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

