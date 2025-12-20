define void @anon0() local_unnamed_addr {
dec_label_pc_5a3bf:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_5a421, label %dec_label_pc_5a41c

dec_label_pc_5a41c:                               ; preds = %dec_label_pc_5a3bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a421

dec_label_pc_5a421:                               ; preds = %dec_label_pc_5a41c, %dec_label_pc_5a3bf
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

