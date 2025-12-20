@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.220() local_unnamed_addr {
dec_label_pc_f997:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fbf3:
  %0 = call i32 @staticReturnsTrue.220()
  %1 = call i32 @staticReturnsTrue.220()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_fc3c, label %dec_label_pc_fc29

dec_label_pc_fc29:                                ; preds = %dec_label_pc_fbf3
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printUnsignedLine(i32 %spec.select)
  br label %dec_label_pc_fc3c

dec_label_pc_fc3c:                                ; preds = %dec_label_pc_fc29, %dec_label_pc_fbf3
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

