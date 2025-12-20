@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1df64:
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_1e010:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_1e06d:
  %0 = add i64 %data, 1
  call void @printLongLongLine(i64 %0)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

