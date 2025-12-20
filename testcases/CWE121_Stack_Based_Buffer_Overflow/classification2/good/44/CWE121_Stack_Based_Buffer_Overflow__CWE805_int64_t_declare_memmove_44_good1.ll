define void @anon0() local_unnamed_addr {
dec_label_pc_351ee:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_35250, label %dec_label_pc_3524b

dec_label_pc_3524b:                               ; preds = %dec_label_pc_351ee
  call void @__stack_chk_fail()
  br label %dec_label_pc_35250

dec_label_pc_35250:                               ; preds = %dec_label_pc_3524b, %dec_label_pc_351ee
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

