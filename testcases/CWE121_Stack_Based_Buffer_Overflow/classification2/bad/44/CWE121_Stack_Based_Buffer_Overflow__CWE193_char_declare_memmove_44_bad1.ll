define void @anon0() local_unnamed_addr {
dec_label_pc_38873:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_388ca, label %dec_label_pc_388c5

dec_label_pc_388c5:                               ; preds = %dec_label_pc_38873
  call void @__stack_chk_fail()
  br label %dec_label_pc_388ca

dec_label_pc_388ca:                               ; preds = %dec_label_pc_388c5, %dec_label_pc_38873
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

