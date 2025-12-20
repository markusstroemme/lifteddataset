@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b739:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1b787, label %dec_label_pc_1b758

dec_label_pc_1b758:                               ; preds = %dec_label_pc_1b739
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  %5 = inttoptr i64 %3 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %3, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1b787

dec_label_pc_1b787:                               ; preds = %dec_label_pc_1b758, %dec_label_pc_1b739
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = zext i32 %.reload to i64
  %10 = icmp eq i32 %.reload, 5
  %11 = icmp eq i1 %10, false
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_1b79e, label %dec_label_pc_1b792

dec_label_pc_1b792:                               ; preds = %dec_label_pc_1b787
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b79e

dec_label_pc_1b79e:                               ; preds = %dec_label_pc_1b792, %dec_label_pc_1b787
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

