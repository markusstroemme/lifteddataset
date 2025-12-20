@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.1327() local_unnamed_addr {
dec_label_pc_4d288:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4d2a6:
  %0 = call i32 @staticReturnsTrue.1327()
  %1 = call i32 @staticReturnsTrue.1327()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4d2ef, label %dec_label_pc_4d2dc

dec_label_pc_4d2dc:                               ; preds = %dec_label_pc_4d2a6
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_4d2ef

dec_label_pc_4d2ef:                               ; preds = %dec_label_pc_4d2dc, %dec_label_pc_4d2a6
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

