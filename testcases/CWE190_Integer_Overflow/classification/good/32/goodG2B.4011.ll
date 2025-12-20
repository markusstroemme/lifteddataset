@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17909:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printIntLine(i32 4)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_17985, label %dec_label_pc_17980

dec_label_pc_17980:                               ; preds = %dec_label_pc_17909
  call void @__stack_chk_fail()
  br label %dec_label_pc_17985

dec_label_pc_17985:                               ; preds = %dec_label_pc_17980, %dec_label_pc_17909
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

