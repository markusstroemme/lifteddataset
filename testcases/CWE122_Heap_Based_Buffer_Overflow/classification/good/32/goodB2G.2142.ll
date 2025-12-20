@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_1442b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14488, label %dec_label_pc_1447e

dec_label_pc_1447e:                               ; preds = %dec_label_pc_1442b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14488:                               ; preds = %dec_label_pc_1442b
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = call i32 @wcslen(ptr %4)
  %10 = add i32 %9, 1
  %11 = call ptr @calloc(i32 %10, i32 4)
  %12 = icmp eq ptr %11, null
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_14506, label %dec_label_pc_144fc

dec_label_pc_144fc:                               ; preds = %dec_label_pc_14488
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14506:                               ; preds = %dec_label_pc_14488
  %14 = bitcast ptr %11 to ptr
  %15 = call ptr @wcscpy(ptr %14, ptr %4)
  call void @printWLine(ptr %14)
  call void @free(ptr %11)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_14546, label %dec_label_pc_14541

dec_label_pc_14541:                               ; preds = %dec_label_pc_14506
  call void @__stack_chk_fail()
  br label %dec_label_pc_14546

dec_label_pc_14546:                               ; preds = %dec_label_pc_14541, %dec_label_pc_14506
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

