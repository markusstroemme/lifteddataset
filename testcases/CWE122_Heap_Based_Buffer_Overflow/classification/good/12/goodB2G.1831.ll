@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_11e70:
  %.in.in.in.reg2mem = alloca ptr, align 8
  %stack_var_-56 = alloca ptr, align 8
  %stack_var_-48 = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  br i1 %1, label %dec_label_pc_11ee1, label %dec_label_pc_11e92

dec_label_pc_11e92:                               ; preds = %dec_label_pc_11e70
  store ptr %3, ptr %stack_var_-48, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_11eb1, label %dec_label_pc_11ea7

dec_label_pc_11ea7:                               ; preds = %dec_label_pc_11e92
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11eb1:                               ; preds = %dec_label_pc_11e92
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  store ptr %stack_var_-48, ptr %.in.in.in.reg2mem, align 8
  br label %dec_label_pc_11f2e

dec_label_pc_11ee1:                               ; preds = %dec_label_pc_11e70
  store ptr %3, ptr %stack_var_-56, align 8
  %10 = icmp eq ptr %2, null
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_11f00, label %dec_label_pc_11ef6

dec_label_pc_11ef6:                               ; preds = %dec_label_pc_11ee1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11f00:                               ; preds = %dec_label_pc_11ee1
  %12 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %13 = ptrtoint ptr %2 to i64
  %14 = add i64 %13, 196
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  store ptr %stack_var_-56, ptr %.in.in.in.reg2mem, align 8
  br label %dec_label_pc_11f2e

dec_label_pc_11f2e:                               ; preds = %dec_label_pc_11f00, %dec_label_pc_11eb1
  %.in.in.in.reload = load ptr, ptr %.in.in.in.reg2mem, align 8
  %16 = load ptr, ptr %.in.in.in.reload, align 8
  %17 = call i32 @globalReturnsTrueOrFalse()
  %18 = icmp eq i32 %17, 0
  %19 = call i32 @wcslen(ptr %16)
  %20 = add i32 %19, 1
  %21 = call ptr @calloc(i32 %20, i32 4)
  %22 = bitcast ptr %21 to ptr
  %23 = icmp eq ptr %21, null
  %24 = icmp eq i1 %23, false
  br i1 %18, label %dec_label_pc_11fa3, label %dec_label_pc_11f3c

dec_label_pc_11f3c:                               ; preds = %dec_label_pc_11f2e
  br i1 %24, label %dec_label_pc_11f76, label %dec_label_pc_11f6c

dec_label_pc_11f6c:                               ; preds = %dec_label_pc_11f3c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11f76:                               ; preds = %dec_label_pc_11f3c
  %25 = call ptr @wcscpy(ptr %22, ptr %16)
  call void @printWLine(ptr %22)
  call void @free(ptr %21)
  br label %dec_label_pc_12008

dec_label_pc_11fa3:                               ; preds = %dec_label_pc_11f2e
  br i1 %24, label %dec_label_pc_11fdd, label %dec_label_pc_11fd3

dec_label_pc_11fd3:                               ; preds = %dec_label_pc_11fa3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11fdd:                               ; preds = %dec_label_pc_11fa3
  %26 = call ptr @wcscpy(ptr %22, ptr %16)
  call void @printWLine(ptr %22)
  call void @free(ptr %21)
  br label %dec_label_pc_12008

dec_label_pc_12008:                               ; preds = %dec_label_pc_11fdd, %dec_label_pc_11f76
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

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

