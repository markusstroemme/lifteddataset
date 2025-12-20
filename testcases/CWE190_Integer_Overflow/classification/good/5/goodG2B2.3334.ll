@global_var_70d9e = external constant [4 x i8]
@global_var_9c020 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_141dd:
  %0 = load i32, ptr @global_var_9c020, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14223, label %dec_label_pc_14211

dec_label_pc_14211:                               ; preds = %dec_label_pc_141dd
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_14223

dec_label_pc_14223:                               ; preds = %dec_label_pc_14211, %dec_label_pc_141dd
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

