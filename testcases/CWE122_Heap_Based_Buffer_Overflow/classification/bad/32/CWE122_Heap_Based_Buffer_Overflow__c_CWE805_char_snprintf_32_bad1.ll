@global_var_79a9a = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b38a:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_b3fc, label %dec_label_pc_b3f2

dec_label_pc_b3f2:                                ; preds = %dec_label_pc_b38a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b3fc:                                ; preds = %dec_label_pc_b38a
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %4, i32 100, ptr @global_var_79a9a, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_b48a, label %dec_label_pc_b485

dec_label_pc_b485:                                ; preds = %dec_label_pc_b3fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_b48a

dec_label_pc_b48a:                                ; preds = %dec_label_pc_b485, %dec_label_pc_b3fc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

