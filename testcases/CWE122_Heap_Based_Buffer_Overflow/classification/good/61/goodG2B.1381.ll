@global_var_34bd9 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_9ea2:
  %0 = call ptr @anon0(ptr null)
  %1 = load i64, ptr %0, align 8
  call void @printLongLongLine(i64 %1)
  call void @free(ptr %0)
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_9f39:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_9f68, label %dec_label_pc_9f5e

dec_label_pc_9f5e:                                ; preds = %dec_label_pc_9f39
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9f68:                                ; preds = %dec_label_pc_9f39
  store i64 2147483643, ptr %0, align 8
  ret ptr %0
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

