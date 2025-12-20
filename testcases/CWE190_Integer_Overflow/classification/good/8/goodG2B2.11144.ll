@global_var_8c81c = external constant [4 x i8]

define i32 @staticReturnsTrue.1109() local_unnamed_addr {
dec_label_pc_3caa7:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3cff7:
  %0 = call i32 @staticReturnsTrue.1109()
  %1 = call i32 @staticReturnsTrue.1109()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3d041, label %dec_label_pc_3d02d

dec_label_pc_3d02d:                               ; preds = %dec_label_pc_3cff7
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printIntLine(i32 %spec.select)
  br label %dec_label_pc_3d041

dec_label_pc_3d041:                               ; preds = %dec_label_pc_3d02d, %dec_label_pc_3cff7
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

