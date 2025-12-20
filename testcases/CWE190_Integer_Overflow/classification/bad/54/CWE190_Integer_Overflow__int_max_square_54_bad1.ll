@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4f725:
  call void @anon1(i32 2147483647)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4f7b9:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_4f80d:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_4f861:
  call void @anon4(i32 %data)
  ret void
}

define void @anon4(i32 %data) local_unnamed_addr {
dec_label_pc_4f8b5:
  %0 = mul i32 %data, %data
  call void @printIntLine(i32 %0)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

