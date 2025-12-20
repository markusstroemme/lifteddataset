@global_var_76ce9 = external constant [5 x i8]
@global_var_a5070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_385cb:
  %0 = load i32, ptr @global_var_a5070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_38619, label %dec_label_pc_38602

dec_label_pc_38602:                               ; preds = %dec_label_pc_385cb
  call void @printLongLongLine(i64 4)
  br label %dec_label_pc_38619

dec_label_pc_38619:                               ; preds = %dec_label_pc_38602, %dec_label_pc_385cb
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

