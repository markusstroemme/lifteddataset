@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_12661:
  %.reg2mem6 = alloca i32, align 4
  %.reg2mem4 = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store ptr null, ptr %.reg2mem4, align 8
  store i32 %0, ptr %.reg2mem6, align 4
  br i1 %2, label %dec_label_pc_126cd, label %dec_label_pc_12680

dec_label_pc_12680:                               ; preds = %dec_label_pc_12661
  %3 = call ptr @malloc(i32 200)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1269f, label %dec_label_pc_12695

dec_label_pc_12695:                               ; preds = %dec_label_pc_12680
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1269f:                               ; preds = %dec_label_pc_12680
  %7 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 196
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pre = load i32, ptr @global_var_ec074, align 4
  %12 = bitcast ptr %11 to ptr
  store ptr %11, ptr %.reg2mem, align 8
  store ptr %12, ptr %.reg2mem4, align 8
  store i32 %.pre, ptr %.reg2mem6, align 4
  br label %dec_label_pc_126cd

dec_label_pc_126cd:                               ; preds = %dec_label_pc_1269f, %dec_label_pc_12661
  %.reload7 = load i32, ptr %.reg2mem6, align 4
  %13 = icmp eq i32 %.reload7, 5
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_1273d, label %dec_label_pc_126d8

dec_label_pc_126d8:                               ; preds = %dec_label_pc_126cd
  %.reload5 = load ptr, ptr %.reg2mem4, align 8
  %15 = call i32 @strlen(ptr %.reload5)
  %16 = add i32 %15, 1
  %17 = call ptr @calloc(i32 %16, i32 4)
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i1 %18, false
  br i1 %19, label %dec_label_pc_12712, label %dec_label_pc_12708

dec_label_pc_12708:                               ; preds = %dec_label_pc_126d8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12712:                               ; preds = %dec_label_pc_126d8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %20 = bitcast ptr %17 to ptr
  %21 = call ptr @wcscpy(ptr %20, ptr %.reload)
  %22 = bitcast ptr %17 to ptr
  call void @printLine(ptr %22)
  call void @free(ptr %17)
  br label %dec_label_pc_1273d

dec_label_pc_1273d:                               ; preds = %dec_label_pc_12712, %dec_label_pc_126cd
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

