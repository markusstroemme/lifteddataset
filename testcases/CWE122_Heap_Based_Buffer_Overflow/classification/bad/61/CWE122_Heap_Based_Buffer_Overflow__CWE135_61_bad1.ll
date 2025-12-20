define void @anon0() local_unnamed_addr {
dec_label_pc_16133:
  %0 = call ptr @anon1(ptr null)
  %1 = call i32 @strlen(ptr %0)
  %2 = add i32 %1, 1
  %3 = call ptr @calloc(i32 %2, i32 4)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_16191, label %dec_label_pc_16187

dec_label_pc_16187:                               ; preds = %dec_label_pc_16133
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16191:                               ; preds = %dec_label_pc_16133
  %6 = bitcast ptr %3 to ptr
  %7 = bitcast ptr %0 to ptr
  %8 = call ptr @wcscpy(ptr %6, ptr %7)
  %9 = bitcast ptr %3 to ptr
  call void @printLine(ptr %9)
  call void @free(ptr %3)
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_162f6:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_16325, label %dec_label_pc_1631b

dec_label_pc_1631b:                               ; preds = %dec_label_pc_162f6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16325:                               ; preds = %dec_label_pc_162f6
  %3 = bitcast ptr %0 to ptr
  %4 = bitcast ptr %0 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %0 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  ret ptr %3
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

