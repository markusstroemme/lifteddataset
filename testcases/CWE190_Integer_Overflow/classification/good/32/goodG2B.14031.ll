@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4bb84:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printIntLine(i32 3)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_4bc01, label %dec_label_pc_4bbfc

dec_label_pc_4bbfc:                               ; preds = %dec_label_pc_4bb84
  call void @__stack_chk_fail()
  br label %dec_label_pc_4bc01

dec_label_pc_4bc01:                               ; preds = %dec_label_pc_4bbfc, %dec_label_pc_4bb84
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

