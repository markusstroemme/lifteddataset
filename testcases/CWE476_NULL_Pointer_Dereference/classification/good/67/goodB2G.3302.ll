@global_var_481c3 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_ee28:
  call void @anon0(i64 0)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_eec6:
  %0 = icmp eq i64 %myStruct, 0
  br i1 %0, label %dec_label_pc_eef6, label %dec_label_pc_eee5

dec_label_pc_eee5:                                ; preds = %dec_label_pc_eec6
  call void @printLongLongLine(i64 %myStruct)
  br label %dec_label_pc_ef05

dec_label_pc_eef6:                                ; preds = %dec_label_pc_eec6
  call void @printLine(ptr @global_var_481c3)
  br label %dec_label_pc_ef05

dec_label_pc_ef05:                                ; preds = %dec_label_pc_eef6, %dec_label_pc_eee5
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

