@CWE122_Heap_Based_Buffer_Overflow__CWE135_45_goodG2BData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_151b3:
  %0 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE135_45_goodG2BData, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = add i32 %2, 1
  %4 = call ptr @calloc(i32 %3, i32 1)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_15204, label %dec_label_pc_151fa

dec_label_pc_151fa:                               ; preds = %dec_label_pc_151b3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15204:                               ; preds = %dec_label_pc_151b3
  %7 = bitcast ptr %4 to ptr
  %8 = call ptr @strcpy(ptr %7, ptr %1)
  call void @printLine(ptr %7)
  call void @free(ptr %4)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_15232:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_15265, label %dec_label_pc_1525b

dec_label_pc_1525b:                               ; preds = %dec_label_pc_15232
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15265:                               ; preds = %dec_label_pc_15232
  %3 = ptrtoint ptr %0 to i64
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = add i64 %3, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE135_45_goodG2BData, align 8
  call void @anon0()
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

