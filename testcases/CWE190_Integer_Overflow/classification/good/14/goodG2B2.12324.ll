@global_var_9543c = external constant [4 x i8]
@global_var_c3074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_48ba0:
  %0 = load i32, ptr @global_var_c3074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_48be3, label %dec_label_pc_48bd0

dec_label_pc_48bd0:                               ; preds = %dec_label_pc_48ba0
  call void @printIntLine(i32 4)
  br label %dec_label_pc_48be3

dec_label_pc_48be3:                               ; preds = %dec_label_pc_48bd0, %dec_label_pc_48ba0
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

