define void @anon0() local_unnamed_addr {
dec_label_pc_6c7b2:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_6c7f4, label %dec_label_pc_6c7ea

dec_label_pc_6c7ea:                               ; preds = %dec_label_pc_6c7b2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6c7f4:                               ; preds = %dec_label_pc_6c7b2
  %4 = bitcast ptr %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = call ptr @memcpy(ptr %1, ptr nonnull %stack_var_-27, i32 %7)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_6c85d, label %dec_label_pc_6c858

dec_label_pc_6c858:                               ; preds = %dec_label_pc_6c7f4
  call void @__stack_chk_fail()
  br label %dec_label_pc_6c85d

dec_label_pc_6c85d:                               ; preds = %dec_label_pc_6c858, %dec_label_pc_6c7f4
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

