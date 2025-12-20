@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5e14f:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5e199, label %dec_label_pc_5e185

dec_label_pc_5e185:                               ; preds = %dec_label_pc_5e14f
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printUnsignedLine(i32 %spec.select)
  br label %dec_label_pc_5e199

dec_label_pc_5e199:                               ; preds = %dec_label_pc_5e185, %dec_label_pc_5e14f
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

