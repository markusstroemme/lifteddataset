@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_103da:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10423, label %dec_label_pc_10410

dec_label_pc_10410:                               ; preds = %dec_label_pc_103da
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printUnsignedLine(i32 %spec.select)
  br label %dec_label_pc_10423

dec_label_pc_10423:                               ; preds = %dec_label_pc_10410, %dec_label_pc_103da
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

