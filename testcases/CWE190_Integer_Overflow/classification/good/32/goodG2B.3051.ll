@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_139df:
  %0 = call i64 @__readfsqword(i64 40)
  call void @printHexCharLine(i8 3)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_13a61, label %dec_label_pc_13a5c

dec_label_pc_13a5c:                               ; preds = %dec_label_pc_139df
  call void @__stack_chk_fail()
  br label %dec_label_pc_13a61

dec_label_pc_13a61:                               ; preds = %dec_label_pc_13a5c, %dec_label_pc_139df
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

