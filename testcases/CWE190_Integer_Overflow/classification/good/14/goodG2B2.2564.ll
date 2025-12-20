@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_112f9:
  %0 = load i32, ptr @global_var_a9074, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_1132f, label %dec_label_pc_11341

dec_label_pc_1132f:                               ; preds = %dec_label_pc_112f9
  call void @printIntLine(i32 4)
  br label %dec_label_pc_11341

dec_label_pc_11341:                               ; preds = %dec_label_pc_112f9, %dec_label_pc_1132f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

