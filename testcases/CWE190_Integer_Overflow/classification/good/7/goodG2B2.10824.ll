@global_var_9543c = external constant [4 x i8]
@global_var_c3054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3d6cd:
  %0 = load i32, ptr @global_var_c3054, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_3d703, label %dec_label_pc_3d715

dec_label_pc_3d703:                               ; preds = %dec_label_pc_3d6cd
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3d715

dec_label_pc_3d715:                               ; preds = %dec_label_pc_3d6cd, %dec_label_pc_3d703
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

