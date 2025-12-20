@global_var_87898 = external constant [21 x i8]
@global_var_878b0 = external constant [54 x i8]
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4df39:
  %0 = load i32, ptr @global_var_b8074, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_4dfab, label %dec_label_pc_4df69

dec_label_pc_4df69:                               ; preds = %dec_label_pc_4df39
  call void @printLine(ptr @global_var_87898)
  br label %dec_label_pc_4dfba

dec_label_pc_4dfab:                               ; preds = %dec_label_pc_4df39
  call void @printLine(ptr @global_var_878b0)
  br label %dec_label_pc_4dfba

dec_label_pc_4dfba:                               ; preds = %dec_label_pc_4dfab, %dec_label_pc_4df69
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

