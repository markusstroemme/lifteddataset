@global_var_7a994 = external constant [4 x i8]
@global_var_a9024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1550e:
  %0 = load i32, ptr @global_var_a9024, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_15551, label %dec_label_pc_1553e

dec_label_pc_1553e:                               ; preds = %dec_label_pc_1550e
  call void @printIntLine(i32 4)
  br label %dec_label_pc_15551

dec_label_pc_15551:                               ; preds = %dec_label_pc_1553e, %dec_label_pc_1550e
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

