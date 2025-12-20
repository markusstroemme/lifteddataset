@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c853:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_c892, label %dec_label_pc_c883

dec_label_pc_c883:                                ; preds = %dec_label_pc_c853
  %5 = inttoptr i64 %1 to ptr
  %6 = load i64, ptr %5, align 8
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_c892

dec_label_pc_c892:                                ; preds = %dec_label_pc_c883, %dec_label_pc_c853
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

