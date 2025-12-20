@global_var_8c829 = external constant [5 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17e13:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_17e5e, label %dec_label_pc_17e45

dec_label_pc_17e45:                               ; preds = %dec_label_pc_17e13
  call void @printLongLongLine(i64 3)
  br label %dec_label_pc_17e5e

dec_label_pc_17e5e:                               ; preds = %dec_label_pc_17e45, %dec_label_pc_17e13
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

