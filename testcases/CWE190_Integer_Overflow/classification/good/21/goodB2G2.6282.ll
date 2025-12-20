@global_var_69920 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c16c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1f621:
  %0 = load i32, ptr @global_var_9c16c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1f664, label %dec_label_pc_1f63a

dec_label_pc_1f63a:                               ; preds = %dec_label_pc_1f621
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_1f655, label %dec_label_pc_1f640

dec_label_pc_1f640:                               ; preds = %dec_label_pc_1f63a
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1f664

dec_label_pc_1f655:                               ; preds = %dec_label_pc_1f63a
  call void @printLine(ptr @global_var_69920)
  br label %dec_label_pc_1f664

dec_label_pc_1f664:                               ; preds = %dec_label_pc_1f655, %dec_label_pc_1f640, %dec_label_pc_1f621
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1f667:
  store i32 1, ptr @global_var_9c16c, align 4
  call void @anon0(i32 -1)
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

