@global_var_8c81c = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_2de4b:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2dfc5:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2e019:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_2e06d:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_2e0cb:
  %0 = add i32 %data, 1
  call void @printIntLine(i32 %0)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

