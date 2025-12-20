@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.474() local_unnamed_addr {
dec_label_pc_134e0:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_134fe:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.474()
  %3 = call i32 @staticReturnsTrue.474()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_1353d, label %dec_label_pc_1352e

dec_label_pc_1352e:                               ; preds = %dec_label_pc_134fe
  %5 = inttoptr i64 %1 to ptr
  %6 = load i64, ptr %5, align 8
  call void @printLongLine(i64 %6)
  br label %dec_label_pc_1353d

dec_label_pc_1353d:                               ; preds = %dec_label_pc_1352e, %dec_label_pc_134fe
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

