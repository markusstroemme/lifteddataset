@global_var_9543c = external constant [4 x i8]

define i32 @staticReturnsTrue.1205() local_unnamed_addr {
dec_label_pc_469a8:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_46e51:
  %0 = call i32 @staticReturnsTrue.1205()
  %1 = call i32 @staticReturnsTrue.1205()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_46e9a, label %dec_label_pc_46e87

dec_label_pc_46e87:                               ; preds = %dec_label_pc_46e51
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_46e9a

dec_label_pc_46e9a:                               ; preds = %dec_label_pc_46e87, %dec_label_pc_46e51
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

