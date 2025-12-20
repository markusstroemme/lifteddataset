define void @anon0() local_unnamed_addr {
dec_label_pc_14567:
  %stack_var_-40 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1459a, label %dec_label_pc_14590

dec_label_pc_14590:                               ; preds = %dec_label_pc_14567
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1459a:                               ; preds = %dec_label_pc_14567
  %4 = bitcast ptr %0 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %0 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-40, align 8
  %10 = call i32 @strlen(ptr %9)
  %11 = add i32 %10, 1
  %12 = call ptr @calloc(i32 %11, i32 4)
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_14612, label %dec_label_pc_14608

dec_label_pc_14608:                               ; preds = %dec_label_pc_1459a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14612:                               ; preds = %dec_label_pc_1459a
  %15 = bitcast ptr %12 to ptr
  %16 = bitcast ptr %9 to ptr
  %17 = call ptr @wcscpy(ptr %15, ptr %16)
  %18 = bitcast ptr %12 to ptr
  call void @printLine(ptr %18)
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

