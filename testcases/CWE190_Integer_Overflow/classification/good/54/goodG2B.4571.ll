@global_var_8c829 = external constant [5 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_19ea6:
  call void @anon0(i64 2)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_19f77:
  call void @anon1(i64 %data)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_19fd4:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_1a031:
  call void @anon3(i64 %data)
  ret void
}

define void @anon3(i64 %data) local_unnamed_addr {
dec_label_pc_1a09b:
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

