@global_var_b6d68 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2990f:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printLine(ptr @global_var_b6d68)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_299d6, label %dec_label_pc_299d1

dec_label_pc_299d1:                               ; preds = %dec_label_pc_2990f
  call void @__stack_chk_fail()
  br label %dec_label_pc_299d6

dec_label_pc_299d6:                               ; preds = %dec_label_pc_299d1, %dec_label_pc_2990f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

