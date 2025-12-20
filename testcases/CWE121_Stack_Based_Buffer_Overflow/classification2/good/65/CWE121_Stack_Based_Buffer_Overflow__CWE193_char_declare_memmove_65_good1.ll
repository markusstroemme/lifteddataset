define void @anon0() local_unnamed_addr {
dec_label_pc_3977f:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_397d6, label %dec_label_pc_397d1

dec_label_pc_397d1:                               ; preds = %dec_label_pc_3977f
  call void @__stack_chk_fail()
  br label %dec_label_pc_397d6

dec_label_pc_397d6:                               ; preds = %dec_label_pc_397d1, %dec_label_pc_3977f
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

