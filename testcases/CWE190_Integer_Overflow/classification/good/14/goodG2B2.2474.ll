@global_var_70d9e = external constant [4 x i8]
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10b5d:
  %0 = load i32, ptr @global_var_9c06c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_10ba0, label %dec_label_pc_10b8d

dec_label_pc_10b8d:                               ; preds = %dec_label_pc_10b5d
  call void @printUnsignedLine(i32 3)
  br label %dec_label_pc_10ba0

dec_label_pc_10ba0:                               ; preds = %dec_label_pc_10b8d, %dec_label_pc_10b5d
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

