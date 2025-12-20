@global_var_b4251 = external constant [21 x i8]
@global_var_ec018 = external local_unnamed_addr global i32
@global_var_ec0c8 = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_fcfb:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec018, align 4
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %.reg2mem, align 8
  br i1 %1, label %dec_label_pc_fd66, label %dec_label_pc_fd19

dec_label_pc_fd19:                                ; preds = %dec_label_pc_fcfb
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_fd38, label %dec_label_pc_fd2e

dec_label_pc_fd2e:                                ; preds = %dec_label_pc_fd19
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fd38:                                ; preds = %dec_label_pc_fd19
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %stack_var_-32, align 8
  store ptr %10, ptr %.reg2mem, align 8
  br label %dec_label_pc_fd66

dec_label_pc_fd66:                                ; preds = %dec_label_pc_fd38, %dec_label_pc_fcfb
  %11 = load i32, ptr @global_var_ec0c8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_fd81, label %dec_label_pc_fd70

dec_label_pc_fd70:                                ; preds = %dec_label_pc_fd66
  call void @printLine(ptr @global_var_b4251)
  br label %dec_label_pc_fde6

dec_label_pc_fd81:                                ; preds = %dec_label_pc_fd66
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @wcslen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 4)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_fdbb, label %dec_label_pc_fdb1

dec_label_pc_fdb1:                                ; preds = %dec_label_pc_fd81
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fdbb:                                ; preds = %dec_label_pc_fd81
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @wcscpy(ptr %18, ptr %.reload)
  call void @printWLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_fde6

dec_label_pc_fde6:                                ; preds = %dec_label_pc_fdbb, %dec_label_pc_fd70
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

