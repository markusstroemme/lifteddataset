@global_var_76ce9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_37383:
  call void @printLongLongLine(i64 4)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

