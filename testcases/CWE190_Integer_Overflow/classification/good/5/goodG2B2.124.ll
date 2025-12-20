@global_var_8c833 = external constant [6 x i8]
@global_var_bc010 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8adf:
  %0 = load i32, ptr @global_var_bc010, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_8b23, label %dec_label_pc_8b07

dec_label_pc_8b07:                                ; preds = %dec_label_pc_8adf
  call void @printHexCharLine(i8 3)
  br label %dec_label_pc_8b23

dec_label_pc_8b23:                                ; preds = %dec_label_pc_8b07, %dec_label_pc_8adf
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

