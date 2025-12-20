@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_392d8:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_393a9:
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

