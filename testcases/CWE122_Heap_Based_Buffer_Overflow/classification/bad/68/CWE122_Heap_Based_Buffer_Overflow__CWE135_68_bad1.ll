@CWE122_Heap_Based_Buffer_Overflow__CWE135_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_17459:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1748c, label %dec_label_pc_17482

dec_label_pc_17482:                               ; preds = %dec_label_pc_17459
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1748c:                               ; preds = %dec_label_pc_17459
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-16, align 8
  %9 = ptrtoint ptr %8 to i64
  store i64 %9, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE135_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_175de:
  %0 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE135_68_badData, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = add i32 %2, 1
  %4 = call ptr @calloc(i32 %3, i32 4)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1762f, label %dec_label_pc_17625

dec_label_pc_17625:                               ; preds = %dec_label_pc_175de
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1762f:                               ; preds = %dec_label_pc_175de
  %7 = bitcast ptr %4 to ptr
  %8 = inttoptr i64 %0 to ptr
  %9 = call ptr @wcscpy(ptr %7, ptr %8)
  %10 = bitcast ptr %4 to ptr
  call void @printLine(ptr %10)
  call void @free(ptr %4)
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

