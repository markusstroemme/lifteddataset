define void @anon0() local_unnamed_addr {
dec_label_pc_12f27:
  %stack_var_-32 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-32, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_12f5a, label %dec_label_pc_12f50

dec_label_pc_12f50:                               ; preds = %dec_label_pc_12f27
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12f5a:                               ; preds = %dec_label_pc_12f27
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-32, align 8
  %9 = bitcast ptr %8 to ptr
  %10 = call i32 @strlen(ptr %9)
  %11 = add i32 %10, 1
  %12 = call ptr @calloc(i32 %11, i32 4)
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_12fc3, label %dec_label_pc_12fb9

dec_label_pc_12fb9:                               ; preds = %dec_label_pc_12f5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12fc3:                               ; preds = %dec_label_pc_12f5a
  %15 = bitcast ptr %12 to ptr
  %16 = call ptr @wcscpy(ptr %15, ptr %8)
  %17 = bitcast ptr %12 to ptr
  call void @printLine(ptr %17)
  call void @free(ptr %12)
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

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

