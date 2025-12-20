@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1905b:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_190b1, label %dec_label_pc_19099

dec_label_pc_19099:                               ; preds = %dec_label_pc_1905b
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i64
  call void @printLongLongLine(i64 %4)
  br label %dec_label_pc_190b1

dec_label_pc_190b1:                               ; preds = %dec_label_pc_19099, %dec_label_pc_1905b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_77a9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

