define void @anon0() local_unnamed_addr {
dec_label_pc_11816:
  %.reg2mem4 = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %.reg2mem, align 8
  store ptr null, ptr %.reg2mem4, align 8
  br i1 %1, label %dec_label_pc_11885, label %dec_label_pc_11838

dec_label_pc_11838:                               ; preds = %dec_label_pc_11816
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_11857, label %dec_label_pc_1184d

dec_label_pc_1184d:                               ; preds = %dec_label_pc_11838
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11857:                               ; preds = %dec_label_pc_11838
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %stack_var_-32, align 8
  %11 = bitcast ptr %10 to ptr
  store ptr %10, ptr %.reg2mem, align 8
  store ptr %11, ptr %.reg2mem4, align 8
  br label %dec_label_pc_11885

dec_label_pc_11885:                               ; preds = %dec_label_pc_11857, %dec_label_pc_11816
  %12 = call i32 @globalReturnsTrue()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_118f8, label %dec_label_pc_11893

dec_label_pc_11893:                               ; preds = %dec_label_pc_11885
  %.reload5 = load ptr, ptr %.reg2mem4, align 8
  %14 = call i32 @strlen(ptr %.reload5)
  %15 = add i32 %14, 1
  %16 = call ptr @calloc(i32 %15, i32 4)
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i1 %17, false
  br i1 %18, label %dec_label_pc_118cd, label %dec_label_pc_118c3

dec_label_pc_118c3:                               ; preds = %dec_label_pc_11893
  call void @exit(i32 -1)
  unreachable

dec_label_pc_118cd:                               ; preds = %dec_label_pc_11893
  %.reload = load ptr, ptr %.reg2mem, align 8
  %19 = bitcast ptr %16 to ptr
  %20 = call ptr @wcscpy(ptr %19, ptr %.reload)
  %21 = bitcast ptr %16 to ptr
  call void @printLine(ptr %21)
  call void @free(ptr %16)
  br label %dec_label_pc_118f8

dec_label_pc_118f8:                               ; preds = %dec_label_pc_118cd, %dec_label_pc_11885
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

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

