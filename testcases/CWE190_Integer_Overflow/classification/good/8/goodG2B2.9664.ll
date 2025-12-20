@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.961() local_unnamed_addr {
dec_label_pc_3ca29:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3cf9b:
  %0 = call i32 @staticReturnsTrue.961()
  %1 = call i32 @staticReturnsTrue.961()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3cfe4, label %dec_label_pc_3cfd1

dec_label_pc_3cfd1:                               ; preds = %dec_label_pc_3cf9b
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3cfe4

dec_label_pc_3cfe4:                               ; preds = %dec_label_pc_3cfd1, %dec_label_pc_3cf9b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

