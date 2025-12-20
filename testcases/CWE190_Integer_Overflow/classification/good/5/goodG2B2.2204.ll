@global_var_7a994 = external constant [4 x i8]
@global_var_a9018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f97e:
  %0 = load i32, ptr @global_var_a9018, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_f9c4, label %dec_label_pc_f9b2

dec_label_pc_f9b2:                                ; preds = %dec_label_pc_f97e
  call void @printIntLine(i32 4)
  br label %dec_label_pc_f9c4

dec_label_pc_f9c4:                                ; preds = %dec_label_pc_f9b2, %dec_label_pc_f97e
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

