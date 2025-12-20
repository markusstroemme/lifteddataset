@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_1238a:
  %stack_var_-32 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-32, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_123c8, label %dec_label_pc_123be

dec_label_pc_123be:                               ; preds = %dec_label_pc_1238a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_123c8:                               ; preds = %dec_label_pc_1238a
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-32, align 8
  %9 = call i32 @wcslen(ptr %8)
  %10 = add i32 %9, 1
  %11 = call ptr @calloc(i32 %10, i32 4)
  %12 = icmp eq ptr %11, null
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_1243b, label %dec_label_pc_12431

dec_label_pc_12431:                               ; preds = %dec_label_pc_123c8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1243b:                               ; preds = %dec_label_pc_123c8
  %14 = bitcast ptr %11 to ptr
  %15 = call ptr @wcscpy(ptr %14, ptr %8)
  call void @printWLine(ptr %14)
  call void @free(ptr %11)
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

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

