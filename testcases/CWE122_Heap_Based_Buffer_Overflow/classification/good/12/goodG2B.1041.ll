@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_85df:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_862d, label %dec_label_pc_8601

dec_label_pc_8601:                                ; preds = %dec_label_pc_85df
  br i1 %4, label %dec_label_pc_8657, label %dec_label_pc_8616

dec_label_pc_8616:                                ; preds = %dec_label_pc_8601
  call void @exit(i32 -1)
  unreachable

dec_label_pc_862d:                                ; preds = %dec_label_pc_85df
  br i1 %4, label %dec_label_pc_8657, label %dec_label_pc_8642

dec_label_pc_8642:                                ; preds = %dec_label_pc_862d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8657:                                ; preds = %dec_label_pc_862d, %dec_label_pc_8601
  store i64 2147483643, ptr %2, align 8
  call void @printLongLongLine(i64 2147483643)
  call void @free(ptr %2)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_2bda7:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

