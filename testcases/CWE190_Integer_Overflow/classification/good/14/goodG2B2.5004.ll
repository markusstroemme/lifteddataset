@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1bd13:
  %0 = load i32, ptr @global_var_a9074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1bd57, label %dec_label_pc_1bd41

dec_label_pc_1bd41:                               ; preds = %dec_label_pc_1bd13
  call void @printIntLine(i32 3)
  br label %dec_label_pc_1bd57

dec_label_pc_1bd57:                               ; preds = %dec_label_pc_1bd41, %dec_label_pc_1bd13
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

