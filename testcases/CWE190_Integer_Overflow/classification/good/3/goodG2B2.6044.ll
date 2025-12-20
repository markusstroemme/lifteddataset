@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1f961:
  call void @printLongLongLine(i64 3)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

