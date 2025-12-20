@global_var_8c83e = external constant [4 x i8]

define i32 @staticReturnsTrue.1841() local_unnamed_addr {
dec_label_pc_5d6bd:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5d92c:
  %0 = call i32 @staticReturnsTrue.1841()
  %1 = call i32 @staticReturnsTrue.1841()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5d976, label %dec_label_pc_5d962

dec_label_pc_5d962:                               ; preds = %dec_label_pc_5d92c
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printUnsignedLine(i32 %spec.select)
  br label %dec_label_pc_5d976

dec_label_pc_5d976:                               ; preds = %dec_label_pc_5d962, %dec_label_pc_5d92c
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

