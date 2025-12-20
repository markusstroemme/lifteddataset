@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_23a2b:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printLongLongLine(i64 3)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_23ab5, label %dec_label_pc_23ab0

dec_label_pc_23ab0:                               ; preds = %dec_label_pc_23a2b
  call void @__stack_chk_fail()
  br label %dec_label_pc_23ab5

dec_label_pc_23ab5:                               ; preds = %dec_label_pc_23ab0, %dec_label_pc_23a2b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

