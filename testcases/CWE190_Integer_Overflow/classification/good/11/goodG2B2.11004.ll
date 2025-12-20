@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3ea89:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_3ead7, label %dec_label_pc_3eac5

dec_label_pc_3eac5:                               ; preds = %dec_label_pc_3ea89
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3ead7

dec_label_pc_3ead7:                               ; preds = %dec_label_pc_3eac5, %dec_label_pc_3ea89
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

