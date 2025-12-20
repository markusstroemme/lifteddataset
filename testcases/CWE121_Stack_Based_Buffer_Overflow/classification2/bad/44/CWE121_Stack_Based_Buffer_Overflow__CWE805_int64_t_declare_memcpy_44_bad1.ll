define void @anon0() local_unnamed_addr {
dec_label_pc_31404:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_31466, label %dec_label_pc_31461

dec_label_pc_31461:                               ; preds = %dec_label_pc_31404
  call void @__stack_chk_fail()
  br label %dec_label_pc_31466

dec_label_pc_31466:                               ; preds = %dec_label_pc_31461, %dec_label_pc_31404
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

