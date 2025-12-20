@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_23cb6:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23d4d:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_23d74, label %dec_label_pc_23d62

dec_label_pc_23d62:                               ; preds = %dec_label_pc_23d4d
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_23d74

dec_label_pc_23d74:                               ; preds = %dec_label_pc_23d62, %dec_label_pc_23d4d
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

