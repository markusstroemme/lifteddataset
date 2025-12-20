@global_var_33bd3 = external constant [21 x i8]
@global_var_34bd9 = external constant [5 x i8]
@global_var_4c03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8856:
  %0 = load i32, ptr @global_var_4c03c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_8886, label %dec_label_pc_8875

dec_label_pc_8875:                                ; preds = %dec_label_pc_8856
  call void @printLine(ptr @global_var_33bd3)
  unreachable

dec_label_pc_8886:                                ; preds = %dec_label_pc_8856
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_88a5, label %dec_label_pc_889b

dec_label_pc_889b:                                ; preds = %dec_label_pc_8886
  call void @exit(i32 -1)
  unreachable

dec_label_pc_88a5:                                ; preds = %dec_label_pc_8886
  store i64 2147483643, ptr %2, align 8
  call void @printLongLongLine(i64 2147483643)
  call void @free(ptr %2)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_2b879:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2b89c, label %dec_label_pc_2b890

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b879
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2b89c

dec_label_pc_2b89c:                               ; preds = %dec_label_pc_2b890, %dec_label_pc_2b879
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

