@global_var_b42ff = external constant [21 x i8]
@global_var_ec074 = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_12740:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store i32 %0, ptr %.reg2mem4, align 4
  br i1 %2, label %dec_label_pc_127ac, label %dec_label_pc_1275f

dec_label_pc_1275f:                               ; preds = %dec_label_pc_12740
  %3 = call ptr @malloc(i32 200)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1277e, label %dec_label_pc_12774

dec_label_pc_12774:                               ; preds = %dec_label_pc_1275f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1277e:                               ; preds = %dec_label_pc_1275f
  %7 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 196
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pr = load i32, ptr @global_var_ec074, align 4
  store ptr %11, ptr %.reg2mem, align 8
  store i32 %.pr, ptr %.reg2mem4, align 4
  br label %dec_label_pc_127ac

dec_label_pc_127ac:                               ; preds = %dec_label_pc_1277e, %dec_label_pc_12740
  %.reload5 = load i32, ptr %.reg2mem4, align 4
  %12 = icmp eq i32 %.reload5, 5
  br i1 %12, label %dec_label_pc_127c8, label %dec_label_pc_127b7

dec_label_pc_127b7:                               ; preds = %dec_label_pc_127ac
  call void @printLine(ptr @global_var_b42ff)
  br label %dec_label_pc_1282d

dec_label_pc_127c8:                               ; preds = %dec_label_pc_127ac
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @wcslen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 4)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_12802, label %dec_label_pc_127f8

dec_label_pc_127f8:                               ; preds = %dec_label_pc_127c8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12802:                               ; preds = %dec_label_pc_127c8
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @wcscpy(ptr %18, ptr %.reload)
  call void @printWLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_1282d

dec_label_pc_1282d:                               ; preds = %dec_label_pc_12802, %dec_label_pc_127b7
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

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

