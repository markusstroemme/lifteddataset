@global_var_79a10 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9b85:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9bdc, label %dec_label_pc_9bb6

dec_label_pc_9bb6:                                ; preds = %dec_label_pc_9b85
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_9bd5, label %dec_label_pc_9bcb

dec_label_pc_9bcb:                                ; preds = %dec_label_pc_9bb6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9bd5:                                ; preds = %dec_label_pc_9bb6
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_9bdc

dec_label_pc_9bdc:                                ; preds = %dec_label_pc_9bd5, %dec_label_pc_9b85
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_79a10, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %9 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_9c47, label %dec_label_pc_9c42

dec_label_pc_9c42:                                ; preds = %dec_label_pc_9bdc
  call void @__stack_chk_fail()
  br label %dec_label_pc_9c47

dec_label_pc_9c47:                                ; preds = %dec_label_pc_9c42, %dec_label_pc_9bdc
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_65cb6:
  ret i32 1
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

