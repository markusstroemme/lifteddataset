define void @anon0() local_unnamed_addr {
dec_label_pc_14313:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14370, label %dec_label_pc_14366

dec_label_pc_14366:                               ; preds = %dec_label_pc_14313
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14370:                               ; preds = %dec_label_pc_14313
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %4, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %1 to ptr
  %9 = call i32 @strlen(ptr %8)
  %10 = add i32 %9, 1
  %11 = call ptr @calloc(i32 %10, i32 1)
  %12 = icmp eq ptr %11, null
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_143e9, label %dec_label_pc_143df

dec_label_pc_143df:                               ; preds = %dec_label_pc_14370
  call void @exit(i32 -1)
  unreachable

dec_label_pc_143e9:                               ; preds = %dec_label_pc_14370
  %14 = bitcast ptr %11 to ptr
  %15 = call ptr @strcpy(ptr %14, ptr %8)
  call void @printLine(ptr %14)
  call void @free(ptr %11)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_14429, label %dec_label_pc_14424

dec_label_pc_14424:                               ; preds = %dec_label_pc_143e9
  call void @__stack_chk_fail()
  br label %dec_label_pc_14429

dec_label_pc_14429:                               ; preds = %dec_label_pc_14424, %dec_label_pc_143e9
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

