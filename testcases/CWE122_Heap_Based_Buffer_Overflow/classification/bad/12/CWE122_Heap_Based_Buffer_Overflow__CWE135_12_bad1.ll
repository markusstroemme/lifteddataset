@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_11cda:
  %.in.in.in.reg2mem = alloca ptr, align 8
  %stack_var_-56 = alloca ptr, align 8
  %stack_var_-48 = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_11d4b, label %dec_label_pc_11cfc

dec_label_pc_11cfc:                               ; preds = %dec_label_pc_11cda
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-48, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_11d1b, label %dec_label_pc_11d11

dec_label_pc_11d11:                               ; preds = %dec_label_pc_11cfc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11d1b:                               ; preds = %dec_label_pc_11cfc
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  store ptr %stack_var_-48, ptr %.in.in.in.reg2mem, align 8
  br label %dec_label_pc_11d93

dec_label_pc_11d4b:                               ; preds = %dec_label_pc_11cda
  %10 = call ptr @malloc(i32 50)
  %11 = bitcast ptr %10 to ptr
  store ptr %11, ptr %stack_var_-56, align 8
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_11d6a, label %dec_label_pc_11d60

dec_label_pc_11d60:                               ; preds = %dec_label_pc_11d4b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11d6a:                               ; preds = %dec_label_pc_11d4b
  %14 = call ptr @memset(ptr %10, i32 65, i32 49)
  %15 = ptrtoint ptr %10 to i64
  %16 = add i64 %15, 49
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  store ptr %stack_var_-56, ptr %.in.in.in.reg2mem, align 8
  br label %dec_label_pc_11d93

dec_label_pc_11d93:                               ; preds = %dec_label_pc_11d6a, %dec_label_pc_11d1b
  %.in.in.in.reload = load ptr, ptr %.in.in.in.reg2mem, align 8
  %18 = load ptr, ptr %.in.in.in.reload, align 8
  %19 = call i32 @globalReturnsTrueOrFalse()
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %dec_label_pc_11e08, label %dec_label_pc_11da1

dec_label_pc_11da1:                               ; preds = %dec_label_pc_11d93
  %21 = bitcast ptr %18 to ptr
  %22 = call i32 @strlen(ptr %21)
  %23 = add i32 %22, 1
  %24 = call ptr @calloc(i32 %23, i32 4)
  %25 = icmp eq ptr %24, null
  %26 = icmp eq i1 %25, false
  br i1 %26, label %dec_label_pc_11ddb, label %dec_label_pc_11dd1

dec_label_pc_11dd1:                               ; preds = %dec_label_pc_11da1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11ddb:                               ; preds = %dec_label_pc_11da1
  %27 = bitcast ptr %24 to ptr
  %28 = call ptr @wcscpy(ptr %27, ptr %18)
  %29 = bitcast ptr %24 to ptr
  call void @printLine(ptr %29)
  call void @free(ptr %24)
  br label %dec_label_pc_11e6d

dec_label_pc_11e08:                               ; preds = %dec_label_pc_11d93
  %30 = call i32 @wcslen(ptr %18)
  %31 = add i32 %30, 1
  %32 = call ptr @calloc(i32 %31, i32 4)
  %33 = icmp eq ptr %32, null
  %34 = icmp eq i1 %33, false
  br i1 %34, label %dec_label_pc_11e42, label %dec_label_pc_11e38

dec_label_pc_11e38:                               ; preds = %dec_label_pc_11e08
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11e42:                               ; preds = %dec_label_pc_11e08
  %35 = bitcast ptr %32 to ptr
  %36 = call ptr @wcscpy(ptr %35, ptr %18)
  call void @printWLine(ptr %35)
  call void @free(ptr %32)
  br label %dec_label_pc_11e6d

dec_label_pc_11e6d:                               ; preds = %dec_label_pc_11e42, %dec_label_pc_11ddb
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

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_9feb2:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9fee4, label %dec_label_pc_9fec9

dec_label_pc_9fec9:                               ; preds = %dec_label_pc_9feb2
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_bd304)
  br label %dec_label_pc_9fee4

dec_label_pc_9fee4:                               ; preds = %dec_label_pc_9fec9, %dec_label_pc_9feb2
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

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

