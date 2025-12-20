@global_var_84350 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1de6f:
  call void @anon0(i64 9223372036854775807)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1df17:
  %0 = icmp eq i64 %data, 9223372036854775807
  br i1 %0, label %dec_label_pc_1df52, label %dec_label_pc_1df37

dec_label_pc_1df37:                               ; preds = %dec_label_pc_1df17
  %1 = add i64 %data, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_1df61

dec_label_pc_1df52:                               ; preds = %dec_label_pc_1df17
  call void @printLine(ptr @global_var_84350)
  br label %dec_label_pc_1df61

dec_label_pc_1df61:                               ; preds = %dec_label_pc_1df52, %dec_label_pc_1df37
  ret void
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

