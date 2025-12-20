@global_var_33b25 = external constant [21 x i8]
@global_var_34bd9 = external constant [5 x i8]
@global_var_4c080 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_7bc8:
  %0 = load i32, ptr @global_var_4c080, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_7bf7, label %dec_label_pc_7be6

dec_label_pc_7be6:                                ; preds = %dec_label_pc_7bc8
  call void @printLine(ptr @global_var_33b25)
  unreachable

dec_label_pc_7bf7:                                ; preds = %dec_label_pc_7bc8
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7c16, label %dec_label_pc_7c0c

dec_label_pc_7c0c:                                ; preds = %dec_label_pc_7bf7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7c16:                                ; preds = %dec_label_pc_7bf7
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

