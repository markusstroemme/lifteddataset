@global_var_ec018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ffaf:
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec018, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_10084, label %dec_label_pc_ffcd

dec_label_pc_ffcd:                                ; preds = %dec_label_pc_ffaf
  %2 = call ptr @malloc(i32 50)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_10015, label %dec_label_pc_ffe2

dec_label_pc_ffe2:                                ; preds = %dec_label_pc_ffcd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10015:                               ; preds = %dec_label_pc_ffcd
  %6 = call ptr @memset(ptr %2, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %.pr = load i32, ptr @global_var_ec018, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_10084, label %dec_label_pc_1001f

dec_label_pc_1001f:                               ; preds = %dec_label_pc_10015
  %11 = load ptr, ptr %stack_var_-32, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = add i32 %12, 1
  %14 = call ptr @calloc(i32 %13, i32 1)
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i1 %15, false
  br i1 %16, label %dec_label_pc_10059, label %dec_label_pc_1004f

dec_label_pc_1004f:                               ; preds = %dec_label_pc_1001f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10059:                               ; preds = %dec_label_pc_1001f
  %17 = bitcast ptr %14 to ptr
  %18 = call ptr @strcpy(ptr %17, ptr %11)
  call void @printLine(ptr %17)
  call void @free(ptr %14)
  br label %dec_label_pc_10084

dec_label_pc_10084:                               ; preds = %dec_label_pc_ffaf, %dec_label_pc_10059, %dec_label_pc_10015
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

