define void @anon0() local_unnamed_addr {
dec_label_pc_5433:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_5466, label %dec_label_pc_545c

dec_label_pc_545c:                                ; preds = %dec_label_pc_5433
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5466:                                ; preds = %dec_label_pc_5433
  %3 = ptrtoint ptr %0 to i64
  %4 = call ptr @memset(ptr %0, i32 65, i32 99)
  %5 = add i64 %3, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @free(ptr %0)
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

