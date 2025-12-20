@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_41434:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printIntLine(i32 4)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_414b5, label %dec_label_pc_414b0

dec_label_pc_414b0:                               ; preds = %dec_label_pc_41434
  call void @__stack_chk_fail()
  br label %dec_label_pc_414b5

dec_label_pc_414b5:                               ; preds = %dec_label_pc_414b0, %dec_label_pc_41434
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

