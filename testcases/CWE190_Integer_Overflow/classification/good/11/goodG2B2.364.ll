@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9b5d:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9ba9, label %dec_label_pc_9b8d

dec_label_pc_9b8d:                                ; preds = %dec_label_pc_9b5d
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i8 33, i8 3
  call void @printHexCharLine(i8 %spec.select)
  br label %dec_label_pc_9ba9

dec_label_pc_9ba9:                                ; preds = %dec_label_pc_9b8d, %dec_label_pc_9b5d
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

