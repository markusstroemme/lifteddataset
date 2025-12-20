@global_var_4877b = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_160f2:
  call void @anon0(i64 0)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_16190:
  %0 = icmp eq i64 %myStruct, 0
  br i1 %0, label %dec_label_pc_161c0, label %dec_label_pc_161af

dec_label_pc_161af:                               ; preds = %dec_label_pc_16190
  call void @printLongLine(i64 %myStruct)
  br label %dec_label_pc_161cf

dec_label_pc_161c0:                               ; preds = %dec_label_pc_16190
  call void @printLine(ptr @global_var_4877b)
  br label %dec_label_pc_161cf

dec_label_pc_161cf:                               ; preds = %dec_label_pc_161c0, %dec_label_pc_161af
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

