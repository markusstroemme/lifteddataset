@global_var_8c833 = external constant [6 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_bdd9:
  call void @anon0(i8 2)
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_be9f:
  call void @anon1(i8 %data)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_bf0d:
  %0 = add i8 %data, 1
  call void @printHexCharLine(i8 %0)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

