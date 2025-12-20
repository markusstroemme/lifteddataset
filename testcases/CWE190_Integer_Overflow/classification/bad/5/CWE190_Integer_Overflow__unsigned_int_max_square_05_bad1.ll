@global_var_70d9e = external constant [4 x i8]
@global_var_9c040 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25355:
  %0 = load i32, ptr @global_var_9c040, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_25396, label %dec_label_pc_25383

dec_label_pc_25383:                               ; preds = %dec_label_pc_25355
  %2 = icmp ne i32 %0, 0
  %spec.store.select = sext i1 %2 to i32
  %3 = mul nsw i32 %spec.store.select, %spec.store.select
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_25396

dec_label_pc_25396:                               ; preds = %dec_label_pc_25383, %dec_label_pc_25355
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

