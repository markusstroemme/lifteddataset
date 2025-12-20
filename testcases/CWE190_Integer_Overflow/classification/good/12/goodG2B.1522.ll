@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e60d:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @globalReturnsTrueOrFalse()
  call void @printHexCharLine(i8 3)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

