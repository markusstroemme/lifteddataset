@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2bb2d:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printUnsignedLine(i32 3)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_2bba9, label %dec_label_pc_2bba4

dec_label_pc_2bba4:                               ; preds = %dec_label_pc_2bb2d
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bba9

dec_label_pc_2bba9:                               ; preds = %dec_label_pc_2bba4, %dec_label_pc_2bb2d
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

