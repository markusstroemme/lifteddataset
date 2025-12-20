define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_14bcd:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_14bfc, label %dec_label_pc_14bf2

dec_label_pc_14bf2:                               ; preds = %dec_label_pc_14bcd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14bfc:                               ; preds = %dec_label_pc_14bcd
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  ret ptr %3
}

define void @anon1() local_unnamed_addr {
dec_label_pc_14c2b:
  %0 = call ptr @anon0(ptr null)
  %1 = call i32 @strlen(ptr %0)
  %2 = add i32 %1, 1
  %3 = call ptr @calloc(i32 %2, i32 1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_14c89, label %dec_label_pc_14c7f

dec_label_pc_14c7f:                               ; preds = %dec_label_pc_14c2b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14c89:                               ; preds = %dec_label_pc_14c2b
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @strcpy(ptr %6, ptr %0)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
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

