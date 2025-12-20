@global_var_7a994 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_185a5:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_18675:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_186d2:
  %0 = mul i32 %data, %data
  call void @printIntLine(i32 %0)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

