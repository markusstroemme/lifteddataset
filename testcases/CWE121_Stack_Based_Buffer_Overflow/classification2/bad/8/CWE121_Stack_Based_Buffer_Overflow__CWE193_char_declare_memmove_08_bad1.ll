define i32 @staticReturnsTrue.438() local_unnamed_addr {
dec_label_pc_36fe6:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_37004:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-37 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.438()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3703c, label %dec_label_pc_3702d

dec_label_pc_3702d:                               ; preds = %dec_label_pc_37004
  %3 = bitcast ptr %stack_var_-37 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_3703c

dec_label_pc_3703c:                               ; preds = %dec_label_pc_3702d, %dec_label_pc_37004
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = add i32 %5, 1
  %7 = bitcast ptr %stack_var_-48.0.reload to ptr
  %8 = call ptr @memmove(ptr %7, ptr nonnull %stack_var_-27, i32 %6)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_37098, label %dec_label_pc_37093

dec_label_pc_37093:                               ; preds = %dec_label_pc_3703c
  call void @__stack_chk_fail()
  br label %dec_label_pc_37098

dec_label_pc_37098:                               ; preds = %dec_label_pc_37093, %dec_label_pc_3703c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

