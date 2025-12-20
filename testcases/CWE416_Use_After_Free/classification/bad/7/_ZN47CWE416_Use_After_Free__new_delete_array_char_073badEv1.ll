@0 = external global i32
@global_var_63044 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a4bf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63044, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1a520, label %dec_label_pc_1a4de

dec_label_pc_1a4de:                               ; preds = %dec_label_pc_1a4bf
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  %5 = inttoptr i64 %3 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %3, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %3, 0
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1a520, label %dec_label_pc_1a514

dec_label_pc_1a514:                               ; preds = %dec_label_pc_1a4de
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1a520

dec_label_pc_1a520:                               ; preds = %dec_label_pc_1a514, %dec_label_pc_1a4de, %dec_label_pc_1a4bf
  %10 = load i32, ptr @global_var_63044, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1a537, label %dec_label_pc_1a52b

dec_label_pc_1a52b:                               ; preds = %dec_label_pc_1a520
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a537

dec_label_pc_1a537:                               ; preds = %dec_label_pc_1a52b, %dec_label_pc_1a520
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

