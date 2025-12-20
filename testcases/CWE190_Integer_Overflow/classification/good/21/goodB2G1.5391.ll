@global_var_84128 = external constant [21 x i8]
@global_var_84140 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc1a0 = external local_unnamed_addr global i32

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1d037:
  %0 = load i32, ptr @global_var_bc1a0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1d062, label %dec_label_pc_1d051

dec_label_pc_1d051:                               ; preds = %dec_label_pc_1d037
  call void @printLine(ptr @global_var_84128)
  br label %dec_label_pc_1d09c

dec_label_pc_1d062:                               ; preds = %dec_label_pc_1d037
  %2 = icmp eq i64 %data, 9223372036854775807
  br i1 %2, label %dec_label_pc_1d08d, label %dec_label_pc_1d072

dec_label_pc_1d072:                               ; preds = %dec_label_pc_1d062
  %3 = add i64 %data, 1
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_1d09c

dec_label_pc_1d08d:                               ; preds = %dec_label_pc_1d062
  call void @printLine(ptr @global_var_84140)
  br label %dec_label_pc_1d09c

dec_label_pc_1d09c:                               ; preds = %dec_label_pc_1d08d, %dec_label_pc_1d072, %dec_label_pc_1d051
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1d09f:
  store i32 0, ptr @global_var_bc1a0, align 4
  call void @anon0(i64 9223372036854775807)
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

