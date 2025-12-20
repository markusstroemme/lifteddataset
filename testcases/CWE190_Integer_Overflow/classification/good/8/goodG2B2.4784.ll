@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.473() local_unnamed_addr {
dec_label_pc_1aaf4:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1ad5b:
  %0 = call i32 @staticReturnsTrue.473()
  %1 = call i32 @staticReturnsTrue.473()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1ada5, label %dec_label_pc_1ad8f

dec_label_pc_1ad8f:                               ; preds = %dec_label_pc_1ad5b
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printIntLine(i32 %spec.select)
  br label %dec_label_pc_1ada5

dec_label_pc_1ada5:                               ; preds = %dec_label_pc_1ad8f, %dec_label_pc_1ad5b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

