@global_var_48134 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_dd33:
  %0 = icmp eq ptr %data, null
  br i1 %0, label %dec_label_pc_dd5b, label %dec_label_pc_dd4a

dec_label_pc_dd4a:                                ; preds = %dec_label_pc_dd33
  %1 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_dd6a

dec_label_pc_dd5b:                                ; preds = %dec_label_pc_dd33
  call void @printLine(ptr @global_var_48134)
  br label %dec_label_pc_dd6a

dec_label_pc_dd6a:                                ; preds = %dec_label_pc_dd5b, %dec_label_pc_dd4a
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_dd6d:
  call void @anon0(ptr null)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

