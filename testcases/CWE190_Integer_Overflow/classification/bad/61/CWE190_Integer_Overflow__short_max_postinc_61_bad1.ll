@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5654a:
  %0 = call i16 @anon1(i16 0)
  %1 = add i16 %0, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define i16 @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_56648:
  ret i16 32767
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

