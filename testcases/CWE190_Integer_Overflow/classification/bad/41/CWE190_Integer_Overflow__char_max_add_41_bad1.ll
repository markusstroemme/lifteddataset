@global_var_76cf3 = external constant [6 x i8]

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1aef2:
  %0 = add i8 %data, 1
  call void @printHexCharLine(i8 %0)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1af1b:
  call void @anon1(i8 127)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

