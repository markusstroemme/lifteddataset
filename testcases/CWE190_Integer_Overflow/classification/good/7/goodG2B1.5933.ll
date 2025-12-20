@global_var_7236c = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1fb25:
  %0 = load i32, ptr @global_var_a9034, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_1fb6b, label %dec_label_pc_1fb59.thread

dec_label_pc_1fb59.thread:                        ; preds = %dec_label_pc_1fb25
  call void @printLine(ptr @global_var_7236c)
  br label %dec_label_pc_1fb80

dec_label_pc_1fb6b:                               ; preds = %dec_label_pc_1fb25
  call void @printIntLine(i32 4)
  br label %dec_label_pc_1fb80

dec_label_pc_1fb80:                               ; preds = %dec_label_pc_1fb59.thread, %dec_label_pc_1fb6b
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

