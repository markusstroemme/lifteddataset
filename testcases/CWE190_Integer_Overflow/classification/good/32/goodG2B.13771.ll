@global_var_76ce9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3a198:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printLongLongLine(i64 4)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_3a227, label %dec_label_pc_3a222

dec_label_pc_3a222:                               ; preds = %dec_label_pc_3a198
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a227

dec_label_pc_3a227:                               ; preds = %dec_label_pc_3a222, %dec_label_pc_3a198
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

