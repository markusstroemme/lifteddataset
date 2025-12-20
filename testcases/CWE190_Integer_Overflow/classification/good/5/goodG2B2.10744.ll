@global_var_9543c = external constant [4 x i8]
@global_var_c3050 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3cd1b:
  %0 = load i32, ptr @global_var_c3050, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3cd61, label %dec_label_pc_3cd4f

dec_label_pc_3cd4f:                               ; preds = %dec_label_pc_3cd1b
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3cd61

dec_label_pc_3cd61:                               ; preds = %dec_label_pc_3cd4f, %dec_label_pc_3cd1b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

