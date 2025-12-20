define void @anon0() local_unnamed_addr {
dec_label_pc_1166a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_116cc, label %dec_label_pc_116c7

dec_label_pc_116c7:                               ; preds = %dec_label_pc_1166a
  call void @__stack_chk_fail()
  br label %dec_label_pc_116cc

dec_label_pc_116cc:                               ; preds = %dec_label_pc_116c7, %dec_label_pc_1166a
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

