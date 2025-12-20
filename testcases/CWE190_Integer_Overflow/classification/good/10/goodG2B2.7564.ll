@global_var_8c81c = external constant [4 x i8]
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_29416:
  %0 = load i32, ptr @global_var_bc0a0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_29458, label %dec_label_pc_29444

dec_label_pc_29444:                               ; preds = %dec_label_pc_29416
  call void @printIntLine(i32 3)
  br label %dec_label_pc_29458

dec_label_pc_29458:                               ; preds = %dec_label_pc_29444, %dec_label_pc_29416
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

