define void @anon0() local_unnamed_addr {
dec_label_pc_2e52e:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_2e590, label %dec_label_pc_2e58b

dec_label_pc_2e58b:                               ; preds = %dec_label_pc_2e52e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e590

dec_label_pc_2e590:                               ; preds = %dec_label_pc_2e58b, %dec_label_pc_2e52e
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

