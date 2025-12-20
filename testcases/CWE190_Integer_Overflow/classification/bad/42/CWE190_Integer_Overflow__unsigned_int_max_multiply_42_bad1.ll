@global_var_70d9e = external constant [4 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_238b7:
  ret i32 -1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_238ce:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_23906, label %dec_label_pc_238f4

dec_label_pc_238f4:                               ; preds = %dec_label_pc_238ce
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_23906

dec_label_pc_23906:                               ; preds = %dec_label_pc_238f4, %dec_label_pc_238ce
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

