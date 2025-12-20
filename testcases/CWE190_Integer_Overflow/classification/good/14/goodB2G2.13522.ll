@global_var_878b0 = external constant [54 x i8]
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4dfbd:
  %0 = load i32, ptr @global_var_b8074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_4e02d, label %dec_label_pc_4e01e

dec_label_pc_4e01e:                               ; preds = %dec_label_pc_4dfbd
  call void @printLine(ptr @global_var_878b0)
  br label %dec_label_pc_4e02d

dec_label_pc_4e02d:                               ; preds = %dec_label_pc_4e01e, %dec_label_pc_4dfbd
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

