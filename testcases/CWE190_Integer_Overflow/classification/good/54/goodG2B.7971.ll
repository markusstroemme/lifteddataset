@global_var_7a994 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_283ba:
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_28485:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_284e5:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_28545:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_285b4:
  %0 = mul i16 %data, %data
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

