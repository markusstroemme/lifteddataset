define void @anon0() local_unnamed_addr {
dec_label_pc_6c1d:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6c8b, label %dec_label_pc_6c3f

dec_label_pc_6c3f:                                ; preds = %dec_label_pc_6c1d
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6c5e, label %dec_label_pc_6c54

dec_label_pc_6c54:                                ; preds = %dec_label_pc_6c3f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6c5e:                                ; preds = %dec_label_pc_6c3f
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6c8b

dec_label_pc_6c8b:                                ; preds = %dec_label_pc_6c5e, %dec_label_pc_6c1d
  %9 = call i32 @globalReturnsTrue()
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

