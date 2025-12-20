@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.1074() local_unnamed_addr {
dec_label_pc_2ecba:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2ef47:
  %0 = call i32 @staticReturnsTrue.1074()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @staticReturnsTrue.1074()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_2ef95, label %dec_label_pc_2ef83

dec_label_pc_2ef83:                               ; preds = %dec_label_pc_2ef47
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_2ef95

dec_label_pc_2ef95:                               ; preds = %dec_label_pc_2ef83, %dec_label_pc_2ef47
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

