@global_var_7a994 = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_17e7b:
  ret i32 2
}

define void @anon1() local_unnamed_addr {
dec_label_pc_17e92:
  %0 = call i32 @anon0(i32 0)
  %1 = mul i32 %0, %0
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

