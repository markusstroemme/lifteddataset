define void @anon0() local_unnamed_addr {
dec_label_pc_61ea8:
  %stack_var_-40.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_61ef8, label %dec_label_pc_61ed9

dec_label_pc_61ed9:                               ; preds = %dec_label_pc_61ea8
  %3 = call ptr @malloc(i32 10)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-40.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_61f17, label %dec_label_pc_61eee

dec_label_pc_61eee:                               ; preds = %dec_label_pc_61ed9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_61ef8:                               ; preds = %dec_label_pc_61ea8
  %6 = call ptr @malloc(i32 11)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-40.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_61f17, label %dec_label_pc_61f0d

dec_label_pc_61f0d:                               ; preds = %dec_label_pc_61ef8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_61f17:                               ; preds = %dec_label_pc_61ef8, %dec_label_pc_61ed9
  %stack_var_-40.0.in.reload = load ptr, ptr %stack_var_-40.0.in.reg2mem, align 8
  %stack_var_-40.0 = bitcast ptr %stack_var_-40.0.in.reload to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %9 = bitcast ptr %stack_var_-27 to ptr
  %10 = call ptr @strcpy(ptr %stack_var_-40.0, ptr nonnull %9)
  call void @printLine(ptr %stack_var_-40.0)
  call void @free(ptr %stack_var_-40.0.in.reload)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_61f6f, label %dec_label_pc_61f6a

dec_label_pc_61f6a:                               ; preds = %dec_label_pc_61f17
  call void @__stack_chk_fail()
  br label %dec_label_pc_61f6f

dec_label_pc_61f6f:                               ; preds = %dec_label_pc_61f6a, %dec_label_pc_61f17
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

