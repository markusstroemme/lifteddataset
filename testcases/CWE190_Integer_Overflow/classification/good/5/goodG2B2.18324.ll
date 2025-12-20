@global_var_8c83e = external constant [4 x i8]
@global_var_bc088 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5d0e9:
  %0 = load i32, ptr @global_var_bc088, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5d12b, label %dec_label_pc_5d117

dec_label_pc_5d117:                               ; preds = %dec_label_pc_5d0e9
  call void @printUnsignedLine(i32 3)
  br label %dec_label_pc_5d12b

dec_label_pc_5d12b:                               ; preds = %dec_label_pc_5d117, %dec_label_pc_5d0e9
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

