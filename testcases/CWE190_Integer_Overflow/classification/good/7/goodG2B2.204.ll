@global_var_8c833 = external constant [6 x i8]
@global_var_bc014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9041:
  %0 = load i32, ptr @global_var_bc014, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_9087, label %dec_label_pc_906b

dec_label_pc_906b:                                ; preds = %dec_label_pc_9041
  call void @printHexCharLine(i8 3)
  br label %dec_label_pc_9087

dec_label_pc_9087:                                ; preds = %dec_label_pc_906b, %dec_label_pc_9041
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

