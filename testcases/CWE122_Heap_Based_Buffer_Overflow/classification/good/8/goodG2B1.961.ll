@global_var_33b6a = external constant [21 x i8]
@global_var_34bd9 = external constant [5 x i8]

define i32 @staticReturnsFalse.95() local_unnamed_addr {
dec_label_pc_7f9a:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_8013:
  %0 = call i32 @staticReturnsFalse.95()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_8046, label %dec_label_pc_8035

dec_label_pc_8035:                                ; preds = %dec_label_pc_8013
  call void @printLine(ptr @global_var_33b6a)
  unreachable

dec_label_pc_8046:                                ; preds = %dec_label_pc_8013
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8065, label %dec_label_pc_805b

dec_label_pc_805b:                                ; preds = %dec_label_pc_8046
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8065:                                ; preds = %dec_label_pc_8046
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

