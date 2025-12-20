define void @anon0() local_unnamed_addr {
dec_label_pc_705e:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr inttoptr (i64 305564 to ptr), align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_70d4, label %dec_label_pc_707d

dec_label_pc_707d:                                ; preds = %dec_label_pc_705e
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_709c, label %dec_label_pc_7092

dec_label_pc_7092:                                ; preds = %dec_label_pc_707d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_709c:                                ; preds = %dec_label_pc_707d
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @memset(ptr %3, i32 65, i32 99)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @free(ptr %3)
  store ptr %6, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_70d4

dec_label_pc_70d4:                                ; preds = %dec_label_pc_705e, %dec_label_pc_709c
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
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

