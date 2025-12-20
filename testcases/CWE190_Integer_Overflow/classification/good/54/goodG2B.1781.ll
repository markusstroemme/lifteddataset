@global_var_70d7c = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_d8da:
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_d9a4:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_da04:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_da64:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_dad3:
  %0 = mul i16 %data, %data
  %1 = sext i16 %0 to i32
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

