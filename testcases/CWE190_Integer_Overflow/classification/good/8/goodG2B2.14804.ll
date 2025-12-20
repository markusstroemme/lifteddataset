@global_var_8c81c = external constant [4 x i8]

define i32 @staticReturnsTrue.1475() local_unnamed_addr {
dec_label_pc_4ed67:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4efee:
  %0 = call i32 @staticReturnsTrue.1475()
  %1 = call i32 @staticReturnsTrue.1475()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f040, label %dec_label_pc_4f022

dec_label_pc_4f022:                               ; preds = %dec_label_pc_4efee
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i32 1, i32 3
  call void @printIntLine(i32 %spec.select)
  br label %dec_label_pc_4f040

dec_label_pc_4f040:                               ; preds = %dec_label_pc_4f022, %dec_label_pc_4efee
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

