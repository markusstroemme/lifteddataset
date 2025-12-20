@global_var_76cf3 = external constant [6 x i8]

define i8 @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1b009:
  ret i8 127
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1b020:
  %0 = call i8 @anon1(i8 32)
  %1 = add i8 %0, 1
  call void @printHexCharLine(i8 %1)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

