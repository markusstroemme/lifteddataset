@global_var_8c81c = external constant [4 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_37aae:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_37af2, label %dec_label_pc_37ade

dec_label_pc_37ade:                               ; preds = %dec_label_pc_37aae
  call void @printIntLine(i32 3)
  br label %dec_label_pc_37af2

dec_label_pc_37af2:                               ; preds = %dec_label_pc_37ade, %dec_label_pc_37aae
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

