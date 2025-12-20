@global_var_842a8 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define i64 @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1da7d:
  ret i64 9223372036854775807
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1da9d:
  %0 = call i64 @anon0(i64 0)
  %1 = icmp eq i64 %0, 9223372036854775807
  br i1 %1, label %dec_label_pc_1daec, label %dec_label_pc_1dad1

dec_label_pc_1dad1:                               ; preds = %dec_label_pc_1da9d
  %2 = add i64 %0, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1dafb

dec_label_pc_1daec:                               ; preds = %dec_label_pc_1da9d
  call void @printLine(ptr @global_var_842a8)
  br label %dec_label_pc_1dafb

dec_label_pc_1dafb:                               ; preds = %dec_label_pc_1daec, %dec_label_pc_1dad1
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

