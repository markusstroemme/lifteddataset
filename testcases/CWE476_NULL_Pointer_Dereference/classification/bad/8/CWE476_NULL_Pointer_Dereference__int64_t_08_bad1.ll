@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.244() local_unnamed_addr {
dec_label_pc_c216:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c234:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.244()
  %3 = call i32 @staticReturnsTrue.244()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_c273, label %dec_label_pc_c264

dec_label_pc_c264:                                ; preds = %dec_label_pc_c234
  %5 = inttoptr i64 %1 to ptr
  %6 = load i64, ptr %5, align 8
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_c273

dec_label_pc_c273:                                ; preds = %dec_label_pc_c264, %dec_label_pc_c234
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

