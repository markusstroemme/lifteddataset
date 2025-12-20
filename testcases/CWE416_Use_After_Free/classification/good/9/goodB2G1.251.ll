define void @anon0() local_unnamed_addr {
dec_label_pc_6637:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6674, label %dec_label_pc_666a

dec_label_pc_666a:                                ; preds = %dec_label_pc_6637
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6674:                                ; preds = %dec_label_pc_6637
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

