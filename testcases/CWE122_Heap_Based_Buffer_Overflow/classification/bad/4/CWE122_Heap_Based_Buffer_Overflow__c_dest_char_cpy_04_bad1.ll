define void @anon0() local_unnamed_addr {
dec_label_pc_95bd:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_9608, label %dec_label_pc_95fe

dec_label_pc_95fe:                                ; preds = %dec_label_pc_95bd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9608:                                ; preds = %dec_label_pc_95bd
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = bitcast ptr %stack_var_-120 to ptr
  %7 = call ptr @strcpy(ptr %4, ptr nonnull %6)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_9669, label %dec_label_pc_9664

dec_label_pc_9664:                                ; preds = %dec_label_pc_9608
  call void @__stack_chk_fail()
  br label %dec_label_pc_9669

dec_label_pc_9669:                                ; preds = %dec_label_pc_9664, %dec_label_pc_9608
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

