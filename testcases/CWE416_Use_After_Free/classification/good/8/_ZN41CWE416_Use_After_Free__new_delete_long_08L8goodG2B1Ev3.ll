@global_var_4a7e5 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.418() local_unnamed_addr {
dec_label_pc_37207:
  ret i32 1
}

define i32 @staticReturnsFalse.419() local_unnamed_addr {
dec_label_pc_37216:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37362:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.419()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_37395, label %dec_label_pc_37384

dec_label_pc_37384:                               ; preds = %dec_label_pc_37362
  call void @printLine(ptr @global_var_4a7e5)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_373ae

dec_label_pc_37395:                               ; preds = %dec_label_pc_37362
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_373ae

dec_label_pc_373ae:                               ; preds = %dec_label_pc_37395, %dec_label_pc_37384
  %6 = call i32 @staticReturnsTrue.418()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = zext i1 %8 to i64
  %10 = and i32 %6, -256
  %11 = sext i32 %10 to i64
  %12 = or i64 %9, %11
  %13 = icmp eq i1 %8, false
  store i64 %12, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_373cb, label %dec_label_pc_373bc

dec_label_pc_373bc:                               ; preds = %dec_label_pc_373ae
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %14 = load i64, ptr %stack_var_-16.0.reload, align 8
  call void @printLongLine(i64 %14)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_373cb

dec_label_pc_373cb:                               ; preds = %dec_label_pc_373bc, %dec_label_pc_373ae
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

