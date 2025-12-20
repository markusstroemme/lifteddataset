@global_var_ec0d8 = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_13a0c:
  %0 = load i32, ptr @global_var_ec0d8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13a8b, label %dec_label_pc_13a26

dec_label_pc_13a26:                               ; preds = %dec_label_pc_13a0c
  %2 = call i32 @strlen(ptr %data)
  %3 = add i32 %2, 1
  %4 = call ptr @calloc(i32 %3, i32 1)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_13a60, label %dec_label_pc_13a56

dec_label_pc_13a56:                               ; preds = %dec_label_pc_13a26
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13a60:                               ; preds = %dec_label_pc_13a26
  %7 = bitcast ptr %4 to ptr
  %8 = call ptr @strcpy(ptr %7, ptr %data)
  call void @printLine(ptr %7)
  call void @free(ptr %4)
  br label %dec_label_pc_13a8b

dec_label_pc_13a8b:                               ; preds = %dec_label_pc_13a60, %dec_label_pc_13a0c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_13a8e:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 50)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_13ac1, label %dec_label_pc_13ab7

dec_label_pc_13ab7:                               ; preds = %dec_label_pc_13a8e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13ac1:                               ; preds = %dec_label_pc_13a8e
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-16, align 8
  store i32 1, ptr @global_var_ec0d8, align 4
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

