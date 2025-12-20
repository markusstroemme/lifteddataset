define void @anon0() local_unnamed_addr {
dec_label_pc_5d01:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5d5a, label %dec_label_pc_5d32

dec_label_pc_5d32:                                ; preds = %dec_label_pc_5d01
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_5d51, label %dec_label_pc_5d47

dec_label_pc_5d47:                                ; preds = %dec_label_pc_5d32
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5d51:                                ; preds = %dec_label_pc_5d32
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_5d80

dec_label_pc_5d5a:                                ; preds = %dec_label_pc_5d01
  %7 = call ptr @malloc(i32 100)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5d79, label %dec_label_pc_5d6f

dec_label_pc_5d6f:                                ; preds = %dec_label_pc_5d5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5d79:                                ; preds = %dec_label_pc_5d5a
  %10 = bitcast ptr %7 to ptr
  store i8 0, ptr %10, align 1
  store ptr %10, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_5d80

dec_label_pc_5d80:                                ; preds = %dec_label_pc_5d79, %dec_label_pc_5d51
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = bitcast ptr %stack_var_-120 to ptr
  %13 = call ptr @strcat(ptr nonnull %stack_var_-128.0.reload, ptr nonnull %12)
  call void @printLine(ptr nonnull %stack_var_-128.0.reload)
  %14 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_5dda, label %dec_label_pc_5dd5

dec_label_pc_5dd5:                                ; preds = %dec_label_pc_5d80
  call void @__stack_chk_fail()
  br label %dec_label_pc_5dda

dec_label_pc_5dda:                                ; preds = %dec_label_pc_5dd5, %dec_label_pc_5d80
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_251b6:
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

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

