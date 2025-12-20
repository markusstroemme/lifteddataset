@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_17b9a:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_17bd2, label %dec_label_pc_17bc0

dec_label_pc_17bc0:                               ; preds = %dec_label_pc_17b9a
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_17bd2

dec_label_pc_17bd2:                               ; preds = %dec_label_pc_17bc0, %dec_label_pc_17b9a
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_17c7f:
  ret i32 2
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

