@global_var_6aad8 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_26594:
  %0 = load i32, ptr @global_var_9c06c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_265e9, label %dec_label_pc_265c4

dec_label_pc_265c4:                               ; preds = %dec_label_pc_26594
  call void @printLine(ptr @global_var_6aad8)
  br label %dec_label_pc_2660e

dec_label_pc_265e9:                               ; preds = %dec_label_pc_26594
  %spec.store.select = sext i1 %1 to i32
  %2 = mul nsw i32 %spec.store.select, %spec.store.select
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2660e

dec_label_pc_2660e:                               ; preds = %dec_label_pc_265e9, %dec_label_pc_265c4
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

