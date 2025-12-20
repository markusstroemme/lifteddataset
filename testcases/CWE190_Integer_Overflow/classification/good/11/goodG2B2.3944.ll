@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17589:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_175da, label %dec_label_pc_175c1

dec_label_pc_175c1:                               ; preds = %dec_label_pc_17589
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i64 1, i64 3
  call void @printLongLongLine(i64 %spec.select)
  br label %dec_label_pc_175da

dec_label_pc_175da:                               ; preds = %dec_label_pc_175c1, %dec_label_pc_17589
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

