@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.351() local_unnamed_addr {
dec_label_pc_15587:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_15826:
  %0 = call i32 @staticReturnsTrue.351()
  %1 = call i32 @staticReturnsTrue.351()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1586f, label %dec_label_pc_1585c

dec_label_pc_1585c:                               ; preds = %dec_label_pc_15826
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_1586f

dec_label_pc_1586f:                               ; preds = %dec_label_pc_1585c, %dec_label_pc_15826
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

