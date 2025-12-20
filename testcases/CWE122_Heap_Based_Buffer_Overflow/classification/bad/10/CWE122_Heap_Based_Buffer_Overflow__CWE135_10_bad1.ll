@global_var_ec070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1137a:
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_11454, label %dec_label_pc_11398

dec_label_pc_11398:                               ; preds = %dec_label_pc_1137a
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_113e5, label %dec_label_pc_113ad

dec_label_pc_113ad:                               ; preds = %dec_label_pc_11398
  call void @exit(i32 -1)
  unreachable

dec_label_pc_113e5:                               ; preds = %dec_label_pc_11398
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %.pr = load i32, ptr @global_var_ec070, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_11454, label %dec_label_pc_113ef

dec_label_pc_113ef:                               ; preds = %dec_label_pc_113e5
  %11 = load ptr, ptr %stack_var_-32, align 8
  %12 = bitcast ptr %11 to ptr
  %13 = call i32 @strlen(ptr %12)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 4)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_11429, label %dec_label_pc_1141f

dec_label_pc_1141f:                               ; preds = %dec_label_pc_113ef
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11429:                               ; preds = %dec_label_pc_113ef
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @wcscpy(ptr %18, ptr %11)
  %20 = bitcast ptr %15 to ptr
  call void @printLine(ptr %20)
  call void @free(ptr %15)
  br label %dec_label_pc_11454

dec_label_pc_11454:                               ; preds = %dec_label_pc_1137a, %dec_label_pc_11429, %dec_label_pc_113e5
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

