define void @anon0() local_unnamed_addr {
dec_label_pc_141f6:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14253, label %dec_label_pc_14249

dec_label_pc_14249:                               ; preds = %dec_label_pc_141f6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14253:                               ; preds = %dec_label_pc_141f6
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = bitcast ptr %1 to ptr
  %10 = call i32 @strlen(ptr %9)
  %11 = add i32 %10, 1
  %12 = call ptr @calloc(i32 %11, i32 4)
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_142d1, label %dec_label_pc_142c7

dec_label_pc_142c7:                               ; preds = %dec_label_pc_14253
  call void @exit(i32 -1)
  unreachable

dec_label_pc_142d1:                               ; preds = %dec_label_pc_14253
  %15 = bitcast ptr %12 to ptr
  %16 = call ptr @wcscpy(ptr %15, ptr %4)
  %17 = bitcast ptr %12 to ptr
  call void @printLine(ptr %17)
  call void @free(ptr %12)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_14311, label %dec_label_pc_1430c

dec_label_pc_1430c:                               ; preds = %dec_label_pc_142d1
  call void @__stack_chk_fail()
  br label %dec_label_pc_14311

dec_label_pc_14311:                               ; preds = %dec_label_pc_1430c, %dec_label_pc_142d1
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

