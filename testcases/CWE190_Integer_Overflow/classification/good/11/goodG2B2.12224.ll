@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_47d1f:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_47d68, label %dec_label_pc_47d55

dec_label_pc_47d55:                               ; preds = %dec_label_pc_47d1f
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_47d68

dec_label_pc_47d68:                               ; preds = %dec_label_pc_47d55, %dec_label_pc_47d1f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_77a9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

