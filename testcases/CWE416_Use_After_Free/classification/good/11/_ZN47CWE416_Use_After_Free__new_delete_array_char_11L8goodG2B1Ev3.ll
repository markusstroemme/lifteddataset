@global_var_4a0f4 = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1afd4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1b007, label %dec_label_pc_1aff6

dec_label_pc_1aff6:                               ; preds = %dec_label_pc_1afd4
  call void @printLine(ptr @global_var_4a0f4)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1b036

dec_label_pc_1b007:                               ; preds = %dec_label_pc_1afd4
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %4, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1b036

dec_label_pc_1b036:                               ; preds = %dec_label_pc_1b007, %dec_label_pc_1aff6
  %10 = call i32 @globalReturnsTrue()
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = zext i1 %12 to i64
  %14 = and i32 %10, -256
  %15 = sext i32 %14 to i64
  %16 = or i64 %13, %15
  %17 = icmp eq i1 %12, false
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1b050, label %dec_label_pc_1b044

dec_label_pc_1b044:                               ; preds = %dec_label_pc_1b036
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b050

dec_label_pc_1b050:                               ; preds = %dec_label_pc_1b044, %dec_label_pc_1b036
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

