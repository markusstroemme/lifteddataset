@global_var_63014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_600f:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_63014, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_607a, label %dec_label_pc_602e

dec_label_pc_602e:                                ; preds = %dec_label_pc_600f
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_604d, label %dec_label_pc_6043

dec_label_pc_6043:                                ; preds = %dec_label_pc_602e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_604d:                                ; preds = %dec_label_pc_602e
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @memset(ptr %3, i32 65, i32 99)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @free(ptr %3)
  %.pre = load i32, ptr @global_var_63014, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %6, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_607a

dec_label_pc_607a:                                ; preds = %dec_label_pc_604d, %dec_label_pc_600f
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = icmp eq i32 %.reload, 5
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_6091, label %dec_label_pc_6085

dec_label_pc_6085:                                ; preds = %dec_label_pc_607a
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  br label %dec_label_pc_6091

dec_label_pc_6091:                                ; preds = %dec_label_pc_6085, %dec_label_pc_607a
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

