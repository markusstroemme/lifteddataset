@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_98c0:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_98f3, label %dec_label_pc_98e9

dec_label_pc_98e9:                                ; preds = %dec_label_pc_98c0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_98f3:                                ; preds = %dec_label_pc_98c0
  store i64 2147483643, ptr %0, align 8
  call void @anon1(ptr %0)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_996f:
  %0 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %0)
  call void @free(ptr %data)
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

