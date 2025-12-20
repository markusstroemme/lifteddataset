define void @anon0() local_unnamed_addr {
dec_label_pc_360f8:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_3615a, label %dec_label_pc_36155

dec_label_pc_36155:                               ; preds = %dec_label_pc_360f8
  call void @__stack_chk_fail()
  br label %dec_label_pc_3615a

dec_label_pc_3615a:                               ; preds = %dec_label_pc_36155, %dec_label_pc_360f8
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

