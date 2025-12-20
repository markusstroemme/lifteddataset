@global_var_8c83e = external constant [4 x i8]
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5de86:
  %0 = load i32, ptr @global_var_bc0a0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5dec8, label %dec_label_pc_5deb4

dec_label_pc_5deb4:                               ; preds = %dec_label_pc_5de86
  call void @printUnsignedLine(i32 3)
  br label %dec_label_pc_5dec8

dec_label_pc_5dec8:                               ; preds = %dec_label_pc_5deb4, %dec_label_pc_5de86
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

