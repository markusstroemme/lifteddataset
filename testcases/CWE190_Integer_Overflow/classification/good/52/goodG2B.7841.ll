@global_var_70d9e = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_23de2:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23e6b:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_23ecd:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_23ef4, label %dec_label_pc_23ee2

dec_label_pc_23ee2:                               ; preds = %dec_label_pc_23ecd
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_23ef4

dec_label_pc_23ef4:                               ; preds = %dec_label_pc_23ee2, %dec_label_pc_23ecd
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

