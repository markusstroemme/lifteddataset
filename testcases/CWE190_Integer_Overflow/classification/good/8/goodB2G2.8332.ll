@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.830() local_unnamed_addr {
dec_label_pc_2593e:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_25a2b:
  %0 = call i32 @staticReturnsTrue.830()
  %1 = call i32 @staticReturnsTrue.830()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_25a9a, label %dec_label_pc_25a75

dec_label_pc_25a75:                               ; preds = %dec_label_pc_25a2b
  %3 = icmp ne i32 %0, 0
  %spec.select = sext i1 %3 to i32
  %4 = mul nsw i32 %spec.select, %spec.select
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_25a9a

dec_label_pc_25a9a:                               ; preds = %dec_label_pc_25a75, %dec_label_pc_25a2b
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

