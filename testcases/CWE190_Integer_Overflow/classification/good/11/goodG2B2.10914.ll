@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f7d0:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_2f81e, label %dec_label_pc_2f80c

dec_label_pc_2f80c:                               ; preds = %dec_label_pc_2f7d0
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_2f81e

dec_label_pc_2f81e:                               ; preds = %dec_label_pc_2f80c, %dec_label_pc_2f7d0
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

