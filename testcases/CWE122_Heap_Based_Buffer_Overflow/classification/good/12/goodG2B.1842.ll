define void @anon0() local_unnamed_addr {
dec_label_pc_1200b:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 50)
  br i1 %1, label %dec_label_pc_12077, label %dec_label_pc_1202d

dec_label_pc_1202d:                               ; preds = %dec_label_pc_1200b
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1204c, label %dec_label_pc_12042

dec_label_pc_12042:                               ; preds = %dec_label_pc_1202d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1204c:                               ; preds = %dec_label_pc_1202d
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 49)
  %7 = add i64 %5, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %2 to ptr
  store ptr %9, ptr %.reg2mem, align 8
  br label %dec_label_pc_120bf

dec_label_pc_12077:                               ; preds = %dec_label_pc_1200b
  %10 = bitcast ptr %2 to ptr
  store ptr %10, ptr %stack_var_-56, align 8
  %11 = icmp eq ptr %2, null
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_12096, label %dec_label_pc_1208c

dec_label_pc_1208c:                               ; preds = %dec_label_pc_12077
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12096:                               ; preds = %dec_label_pc_12077
  %13 = call ptr @memset(ptr %2, i32 65, i32 49)
  %14 = ptrtoint ptr %2 to i64
  %15 = add i64 %14, 49
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = load ptr, ptr %stack_var_-56, align 8
  store ptr %17, ptr %.reg2mem, align 8
  br label %dec_label_pc_120bf

dec_label_pc_120bf:                               ; preds = %dec_label_pc_12096, %dec_label_pc_1204c
  %.reload = load ptr, ptr %.reg2mem, align 8
  %18 = call i32 @globalReturnsTrueOrFalse()
  %19 = icmp eq i32 %18, 0
  %20 = call i32 @strlen(ptr %.reload)
  %21 = add i32 %20, 1
  %22 = call ptr @calloc(i32 %21, i32 1)
  %23 = bitcast ptr %22 to ptr
  %24 = icmp eq ptr %22, null
  %25 = icmp eq i1 %24, false
  br i1 %19, label %dec_label_pc_12134, label %dec_label_pc_120cd

dec_label_pc_120cd:                               ; preds = %dec_label_pc_120bf
  br i1 %25, label %dec_label_pc_12107, label %dec_label_pc_120fd

dec_label_pc_120fd:                               ; preds = %dec_label_pc_120cd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12107:                               ; preds = %dec_label_pc_120cd
  %26 = call ptr @strcpy(ptr %23, ptr %.reload)
  call void @printLine(ptr %23)
  call void @free(ptr %22)
  br label %dec_label_pc_12199

dec_label_pc_12134:                               ; preds = %dec_label_pc_120bf
  br i1 %25, label %dec_label_pc_1216e, label %dec_label_pc_12164

dec_label_pc_12164:                               ; preds = %dec_label_pc_12134
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1216e:                               ; preds = %dec_label_pc_12134
  %27 = call ptr @strcpy(ptr %23, ptr %.reload)
  call void @printLine(ptr %23)
  call void @free(ptr %22)
  br label %dec_label_pc_12199

dec_label_pc_12199:                               ; preds = %dec_label_pc_1216e, %dec_label_pc_12107
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

