define void @anon1() local_unnamed_addr {
dec_label_pc_16e7b:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_16ebd, label %dec_label_pc_16eb3

dec_label_pc_16eb3:                               ; preds = %dec_label_pc_16e7b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16ebd:                               ; preds = %dec_label_pc_16e7b
  %8 = inttoptr i64 %5 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 49)
  %10 = add i64 %5, 49
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  %12 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_16f0f, label %dec_label_pc_16f0a

dec_label_pc_16f0a:                               ; preds = %dec_label_pc_16ebd
  call void @__stack_chk_fail()
  br label %dec_label_pc_16f0f

dec_label_pc_16f0f:                               ; preds = %dec_label_pc_16f0a, %dec_label_pc_16ebd
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1704f:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = add i32 %5, 1
  %7 = call ptr @calloc(i32 %6, i32 1)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_170a5, label %dec_label_pc_1709b

dec_label_pc_1709b:                               ; preds = %dec_label_pc_1704f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_170a5:                               ; preds = %dec_label_pc_1704f
  %10 = bitcast ptr %7 to ptr
  %11 = call ptr @strcpy(ptr %10, ptr %4)
  call void @printLine(ptr %10)
  call void @free(ptr %7)
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

