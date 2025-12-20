@global_var_70d9e = external constant [4 x i8]

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2378b:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_237b2, label %dec_label_pc_237a0

dec_label_pc_237a0:                               ; preds = %dec_label_pc_2378b
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_237b2

dec_label_pc_237b2:                               ; preds = %dec_label_pc_237a0, %dec_label_pc_2378b
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_237b5:
  call void @anon1(i32 -1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

