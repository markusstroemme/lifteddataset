@global_var_bd304 = external constant [5 x i32]

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_149d7:
  %0 = bitcast ptr %data to ptr
  %1 = call i32 @wcslen(ptr %0)
  %2 = add i32 %1, 1
  %3 = call ptr @calloc(i32 %2, i32 4)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_14a21, label %dec_label_pc_14a17

dec_label_pc_14a17:                               ; preds = %dec_label_pc_149d7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14a21:                               ; preds = %dec_label_pc_149d7
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @wcscpy(ptr %6, ptr %0)
  call void @printWLine(ptr %6)
  call void @free(ptr %3)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_14a4f:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14a82, label %dec_label_pc_14a78

dec_label_pc_14a78:                               ; preds = %dec_label_pc_14a4f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14a82:                               ; preds = %dec_label_pc_14a4f
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-16, align 8
  %9 = bitcast ptr %8 to ptr
  call void @anon0(ptr %9)
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

