@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_84c0:
  %0 = call i32 @globalReturnsTrue()
  %1 = call ptr @malloc(i32 8)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_8501, label %dec_label_pc_84f7

dec_label_pc_84f7:                                ; preds = %dec_label_pc_84c0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8501:                                ; preds = %dec_label_pc_84c0
  store i64 2147483643, ptr %1, align 8
  call void @printLongLongLine(i64 2147483643)
  call void @free(ptr %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_2bd89:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

