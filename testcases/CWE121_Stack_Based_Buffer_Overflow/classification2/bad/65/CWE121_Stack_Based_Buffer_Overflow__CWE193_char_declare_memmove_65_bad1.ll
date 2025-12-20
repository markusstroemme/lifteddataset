define void @anon0() local_unnamed_addr {
dec_label_pc_39726:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_3977d, label %dec_label_pc_39778

dec_label_pc_39778:                               ; preds = %dec_label_pc_39726
  call void @__stack_chk_fail()
  br label %dec_label_pc_3977d

dec_label_pc_3977d:                               ; preds = %dec_label_pc_39778, %dec_label_pc_39726
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

