@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25eec:
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_25f2d, label %dec_label_pc_25f1a

dec_label_pc_25f1a:                               ; preds = %dec_label_pc_25eec
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_25f2d

dec_label_pc_25f2d:                               ; preds = %dec_label_pc_25f1a, %dec_label_pc_25eec
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

