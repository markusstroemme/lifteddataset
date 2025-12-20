@global_var_63010 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5bc8:
  %0 = load i32, ptr @global_var_63010, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5c32, label %dec_label_pc_5be6

dec_label_pc_5be6:                                ; preds = %dec_label_pc_5bc8
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_5c05, label %dec_label_pc_5bfb

dec_label_pc_5bfb:                                ; preds = %dec_label_pc_5be6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5c05:                                ; preds = %dec_label_pc_5be6
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_5c32

dec_label_pc_5c32:                                ; preds = %dec_label_pc_5c05, %dec_label_pc_5bc8
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

