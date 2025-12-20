@global_var_9543c = external constant [4 x i8]

define i32 @staticReturnsTrue.1083() local_unnamed_addr {
dec_label_pc_3d74b:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3dbe2:
  %0 = call i32 @staticReturnsTrue.1083()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @staticReturnsTrue.1083()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_3dc30, label %dec_label_pc_3dc1e

dec_label_pc_3dc1e:                               ; preds = %dec_label_pc_3dbe2
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3dc30

dec_label_pc_3dc30:                               ; preds = %dec_label_pc_3dc1e, %dec_label_pc_3dbe2
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

