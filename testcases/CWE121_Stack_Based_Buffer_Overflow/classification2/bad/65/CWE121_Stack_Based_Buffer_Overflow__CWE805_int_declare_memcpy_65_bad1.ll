define void @anon0() local_unnamed_addr {
dec_label_pc_5a35b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_5a3bd, label %dec_label_pc_5a3b8

dec_label_pc_5a3b8:                               ; preds = %dec_label_pc_5a35b
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a3bd

dec_label_pc_5a3bd:                               ; preds = %dec_label_pc_5a3b8, %dec_label_pc_5a35b
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

