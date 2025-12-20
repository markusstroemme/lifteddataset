@global_var_7a994 = external constant [4 x i8]
@global_var_a901c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ff1c:
  %0 = load i32, ptr @global_var_a901c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_ff52, label %dec_label_pc_ff64

dec_label_pc_ff52:                                ; preds = %dec_label_pc_ff1c
  call void @printIntLine(i32 4)
  br label %dec_label_pc_ff64

dec_label_pc_ff64:                                ; preds = %dec_label_pc_ff1c, %dec_label_pc_ff52
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

