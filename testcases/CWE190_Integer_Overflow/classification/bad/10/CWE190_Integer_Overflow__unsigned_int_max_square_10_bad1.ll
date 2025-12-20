@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25d6e:
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_25daf, label %dec_label_pc_25d9c

dec_label_pc_25d9c:                               ; preds = %dec_label_pc_25d6e
  %2 = icmp ne i32 %0, 0
  %spec.store.select = sext i1 %2 to i32
  %3 = mul nsw i32 %spec.store.select, %spec.store.select
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_25daf

dec_label_pc_25daf:                               ; preds = %dec_label_pc_25d9c, %dec_label_pc_25d6e
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

