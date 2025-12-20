@global_var_8c81c = external constant [4 x i8]

define i32 @staticReturnsTrue.987() local_unnamed_addr {
dec_label_pc_36839:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_36aac:
  %0 = call i32 @staticReturnsTrue.987()
  %1 = call i32 @staticReturnsTrue.987()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_36af6, label %dec_label_pc_36ae2

dec_label_pc_36ae2:                               ; preds = %dec_label_pc_36aac
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printIntLine(i32 %spec.select)
  br label %dec_label_pc_36af6

dec_label_pc_36af6:                               ; preds = %dec_label_pc_36ae2, %dec_label_pc_36aac
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

