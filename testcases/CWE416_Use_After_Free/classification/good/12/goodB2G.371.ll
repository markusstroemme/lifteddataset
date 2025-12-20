define void @anon0() local_unnamed_addr {
dec_label_pc_6ea7:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 100)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_6f17, label %dec_label_pc_6ec9

dec_label_pc_6ec9:                                ; preds = %dec_label_pc_6ea7
  br i1 %5, label %dec_label_pc_6ee8, label %dec_label_pc_6ede

dec_label_pc_6ede:                                ; preds = %dec_label_pc_6ec9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6ee8:                                ; preds = %dec_label_pc_6ec9
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %3, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6f63

dec_label_pc_6f17:                                ; preds = %dec_label_pc_6ea7
  br i1 %5, label %dec_label_pc_6f36, label %dec_label_pc_6f2c

dec_label_pc_6f2c:                                ; preds = %dec_label_pc_6f17
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6f36:                                ; preds = %dec_label_pc_6f17
  %9 = call ptr @memset(ptr %2, i32 65, i32 99)
  %10 = add i64 %3, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6f63

dec_label_pc_6f63:                                ; preds = %dec_label_pc_6f36, %dec_label_pc_6ee8
  %12 = call i32 @globalReturnsTrueOrFalse()
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

