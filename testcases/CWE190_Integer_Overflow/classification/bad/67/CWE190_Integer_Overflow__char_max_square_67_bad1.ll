@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_236d6:
  call void @anon1(i64 127)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_23770:
  %0 = urem i64 %myStruct, 256
  %1 = mul nuw nsw i64 %0, %0
  %2 = trunc i64 %1 to i8
  call void @printHexCharLine(i8 %2)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

