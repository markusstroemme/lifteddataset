@global_var_70d9e = external constant [4 x i8]
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2654e:
  %0 = load i32, ptr @global_var_9c06c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_26591, label %dec_label_pc_2657e

dec_label_pc_2657e:                               ; preds = %dec_label_pc_2654e
  %spec.store.select = sext i1 %1 to i32
  %3 = mul nsw i32 %spec.store.select, %spec.store.select
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_26591

dec_label_pc_26591:                               ; preds = %dec_label_pc_2657e, %dec_label_pc_2654e
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

