define void @anon0() local_unnamed_addr {
dec_label_pc_a25f:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_a29d, label %dec_label_pc_a293

dec_label_pc_a293:                                ; preds = %dec_label_pc_a25f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a29d:                                ; preds = %dec_label_pc_a25f
  store i64 2147483643, ptr %0, align 8
  ret void
}

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

