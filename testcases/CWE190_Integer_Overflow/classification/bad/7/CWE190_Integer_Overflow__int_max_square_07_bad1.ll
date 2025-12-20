@staticFive = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4d07b:
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_4d0be, label %dec_label_pc_4d0ab

dec_label_pc_4d0ab:                               ; preds = %dec_label_pc_4d07b
  %3 = zext i1 %1 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4d0be

dec_label_pc_4d0be:                               ; preds = %dec_label_pc_4d0ab, %dec_label_pc_4d07b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

