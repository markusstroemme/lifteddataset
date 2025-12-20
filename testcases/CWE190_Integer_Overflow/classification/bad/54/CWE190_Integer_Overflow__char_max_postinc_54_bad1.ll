@global_var_8ca93 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1002a:
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_100af:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_1010c:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_10169:
  call void @anon4(i8 %data)
  ret void
}

define void @anon4(i8 %data) local_unnamed_addr {
dec_label_pc_101c6:
  %0 = add i8 %data, 1
  call void @printHexCharLine(i8 %0)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

