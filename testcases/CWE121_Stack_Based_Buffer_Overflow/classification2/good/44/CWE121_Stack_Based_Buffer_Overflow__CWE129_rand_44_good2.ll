define void @anon0() local_unnamed_addr {
dec_label_pc_4591c:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  ret void
}

declare i32 @rand() local_unnamed_addr

