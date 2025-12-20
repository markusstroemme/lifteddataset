@global_var_63014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_611c:
  %0 = load i32, ptr @global_var_63014, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6187, label %dec_label_pc_613b

dec_label_pc_613b:                                ; preds = %dec_label_pc_611c
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_615a, label %dec_label_pc_6150

dec_label_pc_6150:                                ; preds = %dec_label_pc_613b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_615a:                                ; preds = %dec_label_pc_613b
  %6 = ptrtoint ptr %3 to i64
  %7 = call ptr @memset(ptr %3, i32 65, i32 99)
  %8 = add i64 %6, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  call void @free(ptr %3)
  br label %dec_label_pc_6187

dec_label_pc_6187:                                ; preds = %dec_label_pc_615a, %dec_label_pc_611c
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

