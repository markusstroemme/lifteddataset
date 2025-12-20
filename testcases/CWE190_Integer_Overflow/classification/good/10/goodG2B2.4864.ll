@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1b2a5:
  %0 = load i32, ptr @global_var_a9070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b2e7, label %dec_label_pc_1b2d1

dec_label_pc_1b2d1:                               ; preds = %dec_label_pc_1b2a5
  call void @printIntLine(i32 3)
  br label %dec_label_pc_1b2e7

dec_label_pc_1b2e7:                               ; preds = %dec_label_pc_1b2d1, %dec_label_pc_1b2a5
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

