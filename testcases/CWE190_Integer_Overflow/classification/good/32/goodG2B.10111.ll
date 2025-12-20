@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_411e6:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printIntLine(i32 4)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_41262, label %dec_label_pc_4125d

dec_label_pc_4125d:                               ; preds = %dec_label_pc_411e6
  call void @__stack_chk_fail()
  br label %dec_label_pc_41262

dec_label_pc_41262:                               ; preds = %dec_label_pc_4125d, %dec_label_pc_411e6
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

