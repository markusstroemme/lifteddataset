define void @anon0() local_unnamed_addr {
dec_label_pc_f1bb:
  %stack_var_-32 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 50)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-32, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_f1ee, label %dec_label_pc_f1e4

dec_label_pc_f1e4:                                ; preds = %dec_label_pc_f1bb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f1ee:                                ; preds = %dec_label_pc_f1bb
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-32, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = add i32 %9, 1
  %11 = call ptr @calloc(i32 %10, i32 1)
  %12 = icmp eq ptr %11, null
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_f251, label %dec_label_pc_f247

dec_label_pc_f247:                                ; preds = %dec_label_pc_f1ee
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f251:                                ; preds = %dec_label_pc_f1ee
  %14 = bitcast ptr %11 to ptr
  %15 = call ptr @strcpy(ptr %14, ptr %8)
  call void @printLine(ptr %14)
  call void @free(ptr %11)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

