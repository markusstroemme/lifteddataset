define void @anon0() local_unnamed_addr {
dec_label_pc_35cf0:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_35d47, label %dec_label_pc_35d42

dec_label_pc_35d42:                               ; preds = %dec_label_pc_35cf0
  call void @__stack_chk_fail()
  br label %dec_label_pc_35d47

dec_label_pc_35d47:                               ; preds = %dec_label_pc_35d42, %dec_label_pc_35cf0
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

