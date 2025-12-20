@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.342() local_unnamed_addr {
dec_label_pc_147cd:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_14a44:
  %0 = call i32 @staticReturnsTrue.342()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @staticReturnsTrue.342()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_14a92, label %dec_label_pc_14a80

dec_label_pc_14a80:                               ; preds = %dec_label_pc_14a44
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_14a92

dec_label_pc_14a92:                               ; preds = %dec_label_pc_14a80, %dec_label_pc_14a44
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

