@global_var_697d8 = external constant [21 x i8]
@global_var_697f0 = external constant [54 x i8]
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1ef70:
  %0 = load i32, ptr @global_var_9c06c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_1efcc, label %dec_label_pc_1efa0

dec_label_pc_1efa0:                               ; preds = %dec_label_pc_1ef70
  call void @printLine(ptr @global_var_697d8)
  br label %dec_label_pc_1efdb

dec_label_pc_1efcc:                               ; preds = %dec_label_pc_1ef70
  call void @printLine(ptr @global_var_697f0)
  br label %dec_label_pc_1efdb

dec_label_pc_1efdb:                               ; preds = %dec_label_pc_1efcc, %dec_label_pc_1efa0
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

