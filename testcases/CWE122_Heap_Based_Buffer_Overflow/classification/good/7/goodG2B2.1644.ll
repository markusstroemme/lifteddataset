@global_var_ec01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_108ef:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec01c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store i32 %0, ptr %.reg2mem4, align 4
  br i1 %2, label %dec_label_pc_10956, label %dec_label_pc_1090e

dec_label_pc_1090e:                               ; preds = %dec_label_pc_108ef
  %3 = call ptr @malloc(i32 50)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1092d, label %dec_label_pc_10923

dec_label_pc_10923:                               ; preds = %dec_label_pc_1090e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1092d:                               ; preds = %dec_label_pc_1090e
  %7 = call ptr @memset(ptr %3, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pre = load i32, ptr @global_var_ec01c, align 4
  store ptr %11, ptr %.reg2mem, align 8
  store i32 %.pre, ptr %.reg2mem4, align 4
  br label %dec_label_pc_10956

dec_label_pc_10956:                               ; preds = %dec_label_pc_1092d, %dec_label_pc_108ef
  %.reload5 = load i32, ptr %.reg2mem4, align 4
  %12 = icmp eq i32 %.reload5, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_109c6, label %dec_label_pc_10961

dec_label_pc_10961:                               ; preds = %dec_label_pc_10956
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = call i32 @strlen(ptr %.reload)
  %15 = add i32 %14, 1
  %16 = call ptr @calloc(i32 %15, i32 1)
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i1 %17, false
  br i1 %18, label %dec_label_pc_1099b, label %dec_label_pc_10991

dec_label_pc_10991:                               ; preds = %dec_label_pc_10961
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1099b:                               ; preds = %dec_label_pc_10961
  %19 = bitcast ptr %16 to ptr
  %20 = call ptr @strcpy(ptr %19, ptr %.reload)
  call void @printLine(ptr %19)
  call void @free(ptr %16)
  br label %dec_label_pc_109c6

dec_label_pc_109c6:                               ; preds = %dec_label_pc_1099b, %dec_label_pc_10956
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

