@global_var_48696 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]
@global_var_6d184 = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1487c:
  %0 = load i32, ptr @global_var_6d184, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_148bd, label %dec_label_pc_14896

dec_label_pc_14896:                               ; preds = %dec_label_pc_1487c
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_148ae, label %dec_label_pc_1489d

dec_label_pc_1489d:                               ; preds = %dec_label_pc_14896
  %3 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %3)
  br label %dec_label_pc_148bd

dec_label_pc_148ae:                               ; preds = %dec_label_pc_14896
  call void @printLine(ptr @global_var_48696)
  br label %dec_label_pc_148bd

dec_label_pc_148bd:                               ; preds = %dec_label_pc_148ae, %dec_label_pc_1489d, %dec_label_pc_1487c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_148c0:
  store i32 1, ptr @global_var_6d184, align 4
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

