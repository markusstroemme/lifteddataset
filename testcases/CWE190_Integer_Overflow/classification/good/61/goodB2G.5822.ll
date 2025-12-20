@global_var_84430 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1e605:
  %0 = call i64 @anon0(i64 0)
  %1 = icmp eq i64 %0, 9223372036854775807
  br i1 %1, label %dec_label_pc_1e654, label %dec_label_pc_1e639

dec_label_pc_1e639:                               ; preds = %dec_label_pc_1e605
  %2 = add i64 %0, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1e663

dec_label_pc_1e654:                               ; preds = %dec_label_pc_1e605
  call void @printLine(ptr @global_var_84430)
  br label %dec_label_pc_1e663

dec_label_pc_1e663:                               ; preds = %dec_label_pc_1e654, %dec_label_pc_1e639
  ret void
}

define i64 @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1e6bf:
  ret i64 9223372036854775807
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

