@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_129fa:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store i32 %0, ptr %.reg2mem4, align 4
  br i1 %2, label %dec_label_pc_12a61, label %dec_label_pc_12a19

dec_label_pc_12a19:                               ; preds = %dec_label_pc_129fa
  %3 = call ptr @malloc(i32 50)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_12a38, label %dec_label_pc_12a2e

dec_label_pc_12a2e:                               ; preds = %dec_label_pc_12a19
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12a38:                               ; preds = %dec_label_pc_12a19
  %7 = call ptr @memset(ptr %3, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pre = load i32, ptr @global_var_ec074, align 4
  store ptr %11, ptr %.reg2mem, align 8
  store i32 %.pre, ptr %.reg2mem4, align 4
  br label %dec_label_pc_12a61

dec_label_pc_12a61:                               ; preds = %dec_label_pc_12a38, %dec_label_pc_129fa
  %.reload5 = load i32, ptr %.reg2mem4, align 4
  %12 = icmp eq i32 %.reload5, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_12ad1, label %dec_label_pc_12a6c

dec_label_pc_12a6c:                               ; preds = %dec_label_pc_12a61
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = call i32 @strlen(ptr %.reload)
  %15 = add i32 %14, 1
  %16 = call ptr @calloc(i32 %15, i32 1)
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i1 %17, false
  br i1 %18, label %dec_label_pc_12aa6, label %dec_label_pc_12a9c

dec_label_pc_12a9c:                               ; preds = %dec_label_pc_12a6c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12aa6:                               ; preds = %dec_label_pc_12a6c
  %19 = bitcast ptr %16 to ptr
  %20 = call ptr @strcpy(ptr %19, ptr %.reload)
  call void @printLine(ptr %19)
  call void @free(ptr %16)
  br label %dec_label_pc_12ad1

dec_label_pc_12ad1:                               ; preds = %dec_label_pc_12aa6, %dec_label_pc_12a61
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

