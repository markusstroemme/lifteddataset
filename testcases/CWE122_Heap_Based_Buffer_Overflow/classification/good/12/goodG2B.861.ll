@global_var_79a28 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9eed:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_9f46, label %dec_label_pc_9f1e

dec_label_pc_9f1e:                                ; preds = %dec_label_pc_9eed
  br i1 %5, label %dec_label_pc_9f6c, label %dec_label_pc_9f33

dec_label_pc_9f33:                                ; preds = %dec_label_pc_9f1e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9f46:                                ; preds = %dec_label_pc_9eed
  br i1 %5, label %dec_label_pc_9f6c, label %dec_label_pc_9f5b

dec_label_pc_9f5b:                                ; preds = %dec_label_pc_9f46
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9f6c:                                ; preds = %dec_label_pc_9f46, %dec_label_pc_9f1e
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %6, i32 100, ptr @global_var_79a28, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_9fd7, label %dec_label_pc_9fd2

dec_label_pc_9fd2:                                ; preds = %dec_label_pc_9f6c
  call void @__stack_chk_fail()
  br label %dec_label_pc_9fd7

dec_label_pc_9fd7:                                ; preds = %dec_label_pc_9fd2, %dec_label_pc_9f6c
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

