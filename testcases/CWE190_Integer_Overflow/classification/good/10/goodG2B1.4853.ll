@global_var_719d4 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1b24f:
  %stack_var_-12.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a92c0, align 4
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-12.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1b282, label %dec_label_pc_1b26b

dec_label_pc_1b26b:                               ; preds = %dec_label_pc_1b24f
  call void @printLine(ptr @global_var_719d4)
  store i32 1, ptr %stack_var_-12.0.reg2mem, align 4
  br label %dec_label_pc_1b282

dec_label_pc_1b282:                               ; preds = %dec_label_pc_1b24f, %dec_label_pc_1b26b
  %2 = load i32, ptr @global_var_a9070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1b2a2, label %dec_label_pc_1b28c

dec_label_pc_1b28c:                               ; preds = %dec_label_pc_1b282
  %stack_var_-12.0.reload = load i32, ptr %stack_var_-12.0.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-12.0.reload)
  br label %dec_label_pc_1b2a2

dec_label_pc_1b2a2:                               ; preds = %dec_label_pc_1b28c, %dec_label_pc_1b282
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

