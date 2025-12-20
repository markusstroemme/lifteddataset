@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a0c0:
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1a101, label %dec_label_pc_1a0ee

dec_label_pc_1a0ee:                               ; preds = %dec_label_pc_1a0c0
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_1a101

dec_label_pc_1a101:                               ; preds = %dec_label_pc_1a0ee, %dec_label_pc_1a0c0
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

