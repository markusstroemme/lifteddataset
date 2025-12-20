@global_var_79a28 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9e01:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9e5a, label %dec_label_pc_9e32

dec_label_pc_9e32:                                ; preds = %dec_label_pc_9e01
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_9e51, label %dec_label_pc_9e47

dec_label_pc_9e47:                                ; preds = %dec_label_pc_9e32
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9e51:                                ; preds = %dec_label_pc_9e32
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_9e80

dec_label_pc_9e5a:                                ; preds = %dec_label_pc_9e01
  %7 = call ptr @malloc(i32 100)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_9e79, label %dec_label_pc_9e6f

dec_label_pc_9e6f:                                ; preds = %dec_label_pc_9e5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9e79:                                ; preds = %dec_label_pc_9e5a
  %10 = bitcast ptr %7 to ptr
  store i8 0, ptr %10, align 1
  store ptr %10, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_9e80

dec_label_pc_9e80:                                ; preds = %dec_label_pc_9e79, %dec_label_pc_9e51
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %stack_var_-128.0.reload, i32 100, ptr @global_var_79a28, ptr nonnull %stack_var_-120)
  call void @printLine(ptr nonnull %stack_var_-128.0.reload)
  %13 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_9eeb, label %dec_label_pc_9ee6

dec_label_pc_9ee6:                                ; preds = %dec_label_pc_9e80
  call void @__stack_chk_fail()
  br label %dec_label_pc_9eeb

dec_label_pc_9eeb:                                ; preds = %dec_label_pc_9ee6, %dec_label_pc_9e80
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

