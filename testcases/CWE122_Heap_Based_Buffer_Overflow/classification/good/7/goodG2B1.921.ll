@global_var_33b55 = external constant [21 x i8]
@global_var_34bd9 = external constant [5 x i8]
@global_var_4c01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_7e8d:
  %0 = load i32, ptr @global_var_4c01c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_7ebd, label %dec_label_pc_7eac

dec_label_pc_7eac:                                ; preds = %dec_label_pc_7e8d
  call void @printLine(ptr @global_var_33b55)
  unreachable

dec_label_pc_7ebd:                                ; preds = %dec_label_pc_7e8d
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7edc, label %dec_label_pc_7ed2

dec_label_pc_7ed2:                                ; preds = %dec_label_pc_7ebd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7edc:                                ; preds = %dec_label_pc_7ebd
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

