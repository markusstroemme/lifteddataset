define void @anon0() local_unnamed_addr {
dec_label_pc_11bc7:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %.reg2mem, align 8
  br i1 %1, label %dec_label_pc_11c31, label %dec_label_pc_11be9

dec_label_pc_11be9:                               ; preds = %dec_label_pc_11bc7
  %2 = call ptr @malloc(i32 50)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_11c08, label %dec_label_pc_11bfe

dec_label_pc_11bfe:                               ; preds = %dec_label_pc_11be9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11c08:                               ; preds = %dec_label_pc_11be9
  %6 = call ptr @memset(ptr %2, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %stack_var_-32, align 8
  store ptr %10, ptr %.reg2mem, align 8
  br label %dec_label_pc_11c31

dec_label_pc_11c31:                               ; preds = %dec_label_pc_11c08, %dec_label_pc_11bc7
  %11 = call i32 @globalReturnsTrue()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_11ca4, label %dec_label_pc_11c3f

dec_label_pc_11c3f:                               ; preds = %dec_label_pc_11c31
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @strlen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 1)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_11c79, label %dec_label_pc_11c6f

dec_label_pc_11c6f:                               ; preds = %dec_label_pc_11c3f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11c79:                               ; preds = %dec_label_pc_11c3f
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @strcpy(ptr %18, ptr %.reload)
  call void @printLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_11ca4

dec_label_pc_11ca4:                               ; preds = %dec_label_pc_11c79, %dec_label_pc_11c31
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a039c:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

