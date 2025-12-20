@global_var_9543c = external constant [4 x i8]
@global_var_c305c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4692f:
  %0 = load i32, ptr @global_var_c305c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_46972, label %dec_label_pc_4695f

dec_label_pc_4695f:                               ; preds = %dec_label_pc_4692f
  call void @printIntLine(i32 4)
  br label %dec_label_pc_46972

dec_label_pc_46972:                               ; preds = %dec_label_pc_4695f, %dec_label_pc_4692f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

