@global_var_83f70 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1c463:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i64 2, i64 9223372036854775807
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1c4c6, label %dec_label_pc_1c4ab

dec_label_pc_1c4ab:                               ; preds = %dec_label_pc_1c463
  %4 = add nuw i64 %., 1
  call void @printLongLongLine(i64 %4)
  br label %dec_label_pc_1c500

dec_label_pc_1c4c6:                               ; preds = %dec_label_pc_1c463
  br i1 %1, label %dec_label_pc_1c4d6, label %dec_label_pc_1c4f1

dec_label_pc_1c4d6:                               ; preds = %dec_label_pc_1c4c6
  %5 = add nuw i64 %., 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_1c500

dec_label_pc_1c4f1:                               ; preds = %dec_label_pc_1c4c6
  call void @printLine(ptr @global_var_83f70)
  br label %dec_label_pc_1c500

dec_label_pc_1c500:                               ; preds = %dec_label_pc_1c4f1, %dec_label_pc_1c4d6, %dec_label_pc_1c4ab
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

