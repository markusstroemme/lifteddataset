@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.229() local_unnamed_addr {
dec_label_pc_ff9a:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10227:
  %0 = call i32 @staticReturnsTrue.229()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @staticReturnsTrue.229()
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %dec_label_pc_10275, label %dec_label_pc_10263

dec_label_pc_10263:                               ; preds = %dec_label_pc_10227
  call void @printIntLine(i32 4)
  br label %dec_label_pc_10275

dec_label_pc_10275:                               ; preds = %dec_label_pc_10263, %dec_label_pc_10227
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

