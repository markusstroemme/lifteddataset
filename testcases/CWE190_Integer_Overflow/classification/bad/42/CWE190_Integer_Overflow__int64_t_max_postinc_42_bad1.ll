@global_var_8ca89 = external constant [5 x i8]

define i64 @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_1d9c3:
  ret i64 9223372036854775807
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1d9e3:
  %0 = call i64 @anon1(i64 0)
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

