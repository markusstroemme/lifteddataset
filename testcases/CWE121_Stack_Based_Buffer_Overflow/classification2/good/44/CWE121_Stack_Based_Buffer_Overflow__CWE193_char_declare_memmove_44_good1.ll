define void @anon0() local_unnamed_addr {
dec_label_pc_38949:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_389a0, label %dec_label_pc_3899b

dec_label_pc_3899b:                               ; preds = %dec_label_pc_38949
  call void @__stack_chk_fail()
  br label %dec_label_pc_389a0

dec_label_pc_389a0:                               ; preds = %dec_label_pc_3899b, %dec_label_pc_38949
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

