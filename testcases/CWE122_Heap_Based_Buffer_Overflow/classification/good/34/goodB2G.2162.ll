@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_14714:
  %stack_var_-40 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14747, label %dec_label_pc_1473d

dec_label_pc_1473d:                               ; preds = %dec_label_pc_14714
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14747:                               ; preds = %dec_label_pc_14714
  %4 = bitcast ptr %0 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %0 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-40, align 8
  %10 = bitcast ptr %9 to ptr
  %11 = call i32 @wcslen(ptr %10)
  %12 = add i32 %11, 1
  %13 = call ptr @calloc(i32 %12, i32 4)
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_147bf, label %dec_label_pc_147b5

dec_label_pc_147b5:                               ; preds = %dec_label_pc_14747
  call void @exit(i32 -1)
  unreachable

dec_label_pc_147bf:                               ; preds = %dec_label_pc_14747
  %16 = bitcast ptr %13 to ptr
  %17 = call ptr @wcscpy(ptr %16, ptr %10)
  call void @printWLine(ptr %16)
  call void @free(ptr %13)
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

