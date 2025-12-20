define void @anon0() local_unnamed_addr {
dec_label_pc_310fd:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_31154, label %dec_label_pc_3114f

dec_label_pc_3114f:                               ; preds = %dec_label_pc_310fd
  call void @__stack_chk_fail()
  br label %dec_label_pc_31154

dec_label_pc_31154:                               ; preds = %dec_label_pc_3114f, %dec_label_pc_310fd
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

