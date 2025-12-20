@global_var_480de = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]
@global_var_6d0d8 = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d5b2:
  %0 = load i32, ptr @global_var_6d0d8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d5f3, label %dec_label_pc_d5cc

dec_label_pc_d5cc:                                ; preds = %dec_label_pc_d5b2
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_d5e4, label %dec_label_pc_d5d3

dec_label_pc_d5d3:                                ; preds = %dec_label_pc_d5cc
  %3 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_d5f3

dec_label_pc_d5e4:                                ; preds = %dec_label_pc_d5cc
  call void @printLine(ptr @global_var_480de)
  br label %dec_label_pc_d5f3

dec_label_pc_d5f3:                                ; preds = %dec_label_pc_d5e4, %dec_label_pc_d5d3, %dec_label_pc_d5b2
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_d5f6:
  store i32 1, ptr @global_var_6d0d8, align 4
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

