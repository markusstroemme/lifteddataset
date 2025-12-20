@global_var_49aa9 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6c98:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6ccb, label %dec_label_pc_6cba

dec_label_pc_6cba:                                ; preds = %dec_label_pc_6c98
  call void @printLine(ptr @global_var_49aa9)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6d0b

dec_label_pc_6ccb:                                ; preds = %dec_label_pc_6c98
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6cea, label %dec_label_pc_6ce0

dec_label_pc_6ce0:                                ; preds = %dec_label_pc_6ccb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6cea:                                ; preds = %dec_label_pc_6ccb
  %5 = bitcast ptr %2 to ptr
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6d0b

dec_label_pc_6d0b:                                ; preds = %dec_label_pc_6cea, %dec_label_pc_6cba
  %10 = call i32 @globalReturnsTrue()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_6d25, label %dec_label_pc_6d19

dec_label_pc_6d19:                                ; preds = %dec_label_pc_6d0b
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  br label %dec_label_pc_6d25

dec_label_pc_6d25:                                ; preds = %dec_label_pc_6d19, %dec_label_pc_6d0b
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

