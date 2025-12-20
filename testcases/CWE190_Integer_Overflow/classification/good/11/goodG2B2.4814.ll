@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1a398:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1a3e1, label %dec_label_pc_1a3ce

dec_label_pc_1a3ce:                               ; preds = %dec_label_pc_1a398
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_1a3e1

dec_label_pc_1a3e1:                               ; preds = %dec_label_pc_1a3ce, %dec_label_pc_1a398
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

