@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_730f:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr inttoptr (i64 405676 to ptr), align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_737a, label %dec_label_pc_732e

dec_label_pc_732e:                                ; preds = %dec_label_pc_730f
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_734d, label %dec_label_pc_7343

dec_label_pc_7343:                                ; preds = %dec_label_pc_732e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_734d:                                ; preds = %dec_label_pc_732e
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @memset(ptr %3, i32 65, i32 99)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @free(ptr %3)
  store ptr %6, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_737a

dec_label_pc_737a:                                ; preds = %dec_label_pc_734d, %dec_label_pc_730f
  %11 = load i32, ptr @global_var_630ac, align 4
  %12 = icmp eq i32 %11, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_7391, label %dec_label_pc_7385

dec_label_pc_7385:                                ; preds = %dec_label_pc_737a
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  br label %dec_label_pc_7391

dec_label_pc_7391:                                ; preds = %dec_label_pc_7385, %dec_label_pc_737a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

