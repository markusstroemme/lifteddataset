@global_var_697f0 = external constant [54 x i8]
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1efde:
  %0 = load i32, ptr @global_var_9c06c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1f038, label %dec_label_pc_1f029

dec_label_pc_1f029:                               ; preds = %dec_label_pc_1efde
  call void @printLine(ptr @global_var_697f0)
  br label %dec_label_pc_1f038

dec_label_pc_1f038:                               ; preds = %dec_label_pc_1f029, %dec_label_pc_1efde
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

declare i32 @puts(ptr) local_unnamed_addr

