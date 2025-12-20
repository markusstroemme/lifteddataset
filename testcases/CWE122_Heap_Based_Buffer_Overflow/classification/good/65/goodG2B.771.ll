define void @anon0() local_unnamed_addr {
dec_label_pc_7204:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_7242, label %dec_label_pc_7238

dec_label_pc_7238:                                ; preds = %dec_label_pc_7204
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7242:                                ; preds = %dec_label_pc_7204
  %3 = call i128 @__asm_movsd(i64 9098483789791991595)
  %4 = call i64 @__asm_movsd.211(i128 %3)
  store i64 %4, ptr %0, align 8
  ret void
}

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

