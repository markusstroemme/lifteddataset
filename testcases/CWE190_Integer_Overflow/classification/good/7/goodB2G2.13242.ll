@staticFive = external local_unnamed_addr global i32
@global_var_87698 = external constant [54 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4d145:
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_4d1b5, label %dec_label_pc_4d1a6

dec_label_pc_4d1a6:                               ; preds = %dec_label_pc_4d145
  call void @printLine(ptr @global_var_87698)
  br label %dec_label_pc_4d1b5

dec_label_pc_4d1b5:                               ; preds = %dec_label_pc_4d1a6, %dec_label_pc_4d145
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

