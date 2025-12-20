@global_var_8c32c = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23a53:
  ret i32 2
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23a6a:
  %0 = call i32 @anon0(i32 0)
  %1 = mul i32 %0, %0
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

