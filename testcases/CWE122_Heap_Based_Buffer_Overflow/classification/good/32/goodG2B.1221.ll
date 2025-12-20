@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_929c:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_92f9, label %dec_label_pc_92ef

dec_label_pc_92ef:                                ; preds = %dec_label_pc_929c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_92f9:                                ; preds = %dec_label_pc_929c
  store i64 2147483643, ptr %1, align 8
  call void @printLongLongLine(i64 2147483643)
  call void @free(ptr %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_934a, label %dec_label_pc_9345

dec_label_pc_9345:                                ; preds = %dec_label_pc_92f9
  call void @__stack_chk_fail()
  br label %dec_label_pc_934a

dec_label_pc_934a:                                ; preds = %dec_label_pc_9345, %dec_label_pc_92f9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

