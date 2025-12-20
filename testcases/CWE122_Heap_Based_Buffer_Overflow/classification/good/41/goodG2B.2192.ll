define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_148f4:
  %0 = call i32 @strlen(ptr %data)
  %1 = add i32 %0, 1
  %2 = call ptr @calloc(i32 %1, i32 1)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1493e, label %dec_label_pc_14934

dec_label_pc_14934:                               ; preds = %dec_label_pc_148f4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1493e:                               ; preds = %dec_label_pc_148f4
  %5 = bitcast ptr %2 to ptr
  %6 = call ptr @strcpy(ptr %5, ptr %data)
  call void @printLine(ptr %5)
  call void @free(ptr %2)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1496c:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 50)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1499f, label %dec_label_pc_14995

dec_label_pc_14995:                               ; preds = %dec_label_pc_1496c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1499f:                               ; preds = %dec_label_pc_1496c
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-16, align 8
  call void @anon0(ptr %8)
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

