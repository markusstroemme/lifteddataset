define void @anon0() local_unnamed_addr {
dec_label_pc_1ad1a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_1ad7c, label %dec_label_pc_1ad77

dec_label_pc_1ad77:                               ; preds = %dec_label_pc_1ad1a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ad7c

dec_label_pc_1ad7c:                               ; preds = %dec_label_pc_1ad77, %dec_label_pc_1ad1a
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

