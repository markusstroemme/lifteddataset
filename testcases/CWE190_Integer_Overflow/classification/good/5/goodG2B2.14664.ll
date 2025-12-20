@global_var_8c81c = external constant [4 x i8]
@global_var_bc070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4e74b:
  %0 = load i32, ptr @global_var_bc070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4e795, label %dec_label_pc_4e777

dec_label_pc_4e777:                               ; preds = %dec_label_pc_4e74b
  call void @printIntLine(i32 3)
  br label %dec_label_pc_4e795

dec_label_pc_4e795:                               ; preds = %dec_label_pc_4e777, %dec_label_pc_4e74b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

