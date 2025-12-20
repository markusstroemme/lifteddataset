@global_var_70d9e = external constant [4 x i8]
@global_var_9c028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_192d8:
  %0 = load i32, ptr @global_var_9c028, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_19319, label %dec_label_pc_19306

dec_label_pc_19306:                               ; preds = %dec_label_pc_192d8
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_19319

dec_label_pc_19319:                               ; preds = %dec_label_pc_19306, %dec_label_pc_192d8
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

