@global_var_8c829 = external constant [5 x i8]
@global_var_bc200 = external local_unnamed_addr global i32

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_23247:
  %0 = load i32, ptr @global_var_bc200, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2327a, label %dec_label_pc_23261

dec_label_pc_23261:                               ; preds = %dec_label_pc_23247
  %2 = add i64 %data, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_2327a

dec_label_pc_2327a:                               ; preds = %dec_label_pc_23261, %dec_label_pc_23247
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2327d:
  store i32 1, ptr @global_var_bc200, align 4
  call void @anon0(i64 2)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

