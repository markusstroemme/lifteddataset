@global_var_69908 = external constant [21 x i8]
@global_var_69920 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c168 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1f599:
  %0 = load i32, ptr @global_var_9c168, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1f5c3, label %dec_label_pc_1f5b2

dec_label_pc_1f5b2:                               ; preds = %dec_label_pc_1f599
  call void @printLine(ptr @global_var_69908)
  br label %dec_label_pc_1f5ed

dec_label_pc_1f5c3:                               ; preds = %dec_label_pc_1f599
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_1f5de, label %dec_label_pc_1f5c9

dec_label_pc_1f5c9:                               ; preds = %dec_label_pc_1f5c3
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1f5ed

dec_label_pc_1f5de:                               ; preds = %dec_label_pc_1f5c3
  call void @printLine(ptr @global_var_69920)
  br label %dec_label_pc_1f5ed

dec_label_pc_1f5ed:                               ; preds = %dec_label_pc_1f5de, %dec_label_pc_1f5c9, %dec_label_pc_1f5b2
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1f5f0:
  store i32 0, ptr @global_var_9c168, align 4
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

