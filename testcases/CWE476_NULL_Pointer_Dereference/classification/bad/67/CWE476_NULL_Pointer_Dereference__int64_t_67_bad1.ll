@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_eda7:
  call void @anon1(i64 0)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_ee72:
  call void @printLongLongLine(i64 %myStruct)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

