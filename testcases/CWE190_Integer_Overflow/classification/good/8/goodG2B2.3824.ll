@global_var_8c829 = external constant [5 x i8]

define i32 @staticReturnsTrue.377() local_unnamed_addr {
dec_label_pc_16a0e:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16cb2:
  %0 = call i32 @staticReturnsTrue.377()
  %1 = call i32 @staticReturnsTrue.377()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_16d03, label %dec_label_pc_16cea

dec_label_pc_16cea:                               ; preds = %dec_label_pc_16cb2
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i64 1, i64 3
  call void @printLongLongLine(i64 %spec.select)
  br label %dec_label_pc_16d03

dec_label_pc_16d03:                               ; preds = %dec_label_pc_16cea, %dec_label_pc_16cb2
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

