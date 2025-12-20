@global_var_71924 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.473() local_unnamed_addr {
dec_label_pc_1aaf4:
  ret i32 1
}

define i32 @staticReturnsFalse.474() local_unnamed_addr {
dec_label_pc_1ab03:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1acfd:
  %stack_var_-12.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.474()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-12.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1ad34, label %dec_label_pc_1ad1d

dec_label_pc_1ad1d:                               ; preds = %dec_label_pc_1acfd
  call void @printLine(ptr @global_var_71924)
  store i32 1, ptr %stack_var_-12.0.reg2mem, align 4
  br label %dec_label_pc_1ad34

dec_label_pc_1ad34:                               ; preds = %dec_label_pc_1acfd, %dec_label_pc_1ad1d
  %2 = call i32 @staticReturnsTrue.473()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1ad58, label %dec_label_pc_1ad42

dec_label_pc_1ad42:                               ; preds = %dec_label_pc_1ad34
  %stack_var_-12.0.reload = load i32, ptr %stack_var_-12.0.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-12.0.reload)
  br label %dec_label_pc_1ad58

dec_label_pc_1ad58:                               ; preds = %dec_label_pc_1ad42, %dec_label_pc_1ad34
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

