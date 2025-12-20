@global_var_b71a8 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ca70:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printLine(ptr @global_var_b71a8)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_2cb25, label %dec_label_pc_2cb20

dec_label_pc_2cb20:                               ; preds = %dec_label_pc_2ca70
  call void @__stack_chk_fail()
  br label %dec_label_pc_2cb25

dec_label_pc_2cb25:                               ; preds = %dec_label_pc_2cb20, %dec_label_pc_2ca70
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

