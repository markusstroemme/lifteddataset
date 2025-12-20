@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.839() local_unnamed_addr {
dec_label_pc_31fb8:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_32518:
  %0 = call i32 @staticReturnsTrue.839()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @staticReturnsTrue.839()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_32566, label %dec_label_pc_32554

dec_label_pc_32554:                               ; preds = %dec_label_pc_32518
  call void @printIntLine(i32 4)
  br label %dec_label_pc_32566

dec_label_pc_32566:                               ; preds = %dec_label_pc_32554, %dec_label_pc_32518
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

