@global_var_6a8c0 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25785:
  %0 = load i32, ptr @global_var_9c044, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_257da, label %dec_label_pc_257b5

dec_label_pc_257b5:                               ; preds = %dec_label_pc_25785
  call void @printLine(ptr @global_var_6a8c0)
  br label %dec_label_pc_257ff

dec_label_pc_257da:                               ; preds = %dec_label_pc_25785
  %spec.store.select = sext i1 %1 to i32
  %2 = mul nsw i32 %spec.store.select, %spec.store.select
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_257ff

dec_label_pc_257ff:                               ; preds = %dec_label_pc_257da, %dec_label_pc_257b5
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

