@global_var_3d014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5308:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_3d014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_535c, label %dec_label_pc_5336

dec_label_pc_5336:                                ; preds = %dec_label_pc_5308
  %4 = call ptr @malloc(i32 100)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_5355, label %dec_label_pc_534b

dec_label_pc_534b:                                ; preds = %dec_label_pc_5336
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5355:                                ; preds = %dec_label_pc_5336
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_535c

dec_label_pc_535c:                                ; preds = %dec_label_pc_5355, %dec_label_pc_5308
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = bitcast ptr %stack_var_-120 to ptr
  %10 = call ptr @strcat(ptr %stack_var_-128.0.reload, ptr nonnull %9)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %11 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_53b6, label %dec_label_pc_53b1

dec_label_pc_53b1:                                ; preds = %dec_label_pc_535c
  call void @__stack_chk_fail()
  br label %dec_label_pc_53b6

dec_label_pc_53b6:                                ; preds = %dec_label_pc_53b1, %dec_label_pc_535c
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

