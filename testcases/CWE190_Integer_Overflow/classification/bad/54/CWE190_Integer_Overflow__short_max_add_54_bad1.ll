@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2c1c8:
  call void @anon1(i16 32767)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_2c259:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_2c2b9:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_2c319:
  call void @anon4(i16 %data)
  ret void
}

define void @anon4(i16 %data) local_unnamed_addr {
dec_label_pc_2c379:
  %0 = add i16 %data, 1
  %1 = sext i16 %0 to i32
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

