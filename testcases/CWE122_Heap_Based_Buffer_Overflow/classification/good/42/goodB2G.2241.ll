@global_var_bd304 = external constant [5 x i32]

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_14cb7:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_14ce6, label %dec_label_pc_14cdc

dec_label_pc_14cdc:                               ; preds = %dec_label_pc_14cb7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14ce6:                               ; preds = %dec_label_pc_14cb7
  %3 = bitcast ptr %0 to ptr
  %4 = bitcast ptr %0 to ptr
  %5 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %6 = ptrtoint ptr %0 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  ret ptr %3
}

define void @anon1() local_unnamed_addr {
dec_label_pc_14d1a:
  %0 = call ptr @anon0(ptr null)
  %1 = bitcast ptr %0 to ptr
  %2 = call i32 @wcslen(ptr %1)
  %3 = add i32 %2, 1
  %4 = call ptr @calloc(i32 %3, i32 4)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_14d78, label %dec_label_pc_14d6e

dec_label_pc_14d6e:                               ; preds = %dec_label_pc_14d1a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14d78:                               ; preds = %dec_label_pc_14d1a
  %7 = bitcast ptr %4 to ptr
  %8 = call ptr @wcscpy(ptr %7, ptr %1)
  call void @printWLine(ptr %7)
  call void @free(ptr %4)
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

