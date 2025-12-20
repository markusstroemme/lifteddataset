@global_var_72474 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_203be:
  %0 = load i32, ptr @global_var_a92c0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_203f1, label %dec_label_pc_203f1.thread

dec_label_pc_203f1.thread:                        ; preds = %dec_label_pc_203be
  call void @printLine(ptr @global_var_72474)
  br label %dec_label_pc_20417

dec_label_pc_203f1:                               ; preds = %dec_label_pc_203be
  %2 = load i32, ptr @global_var_a9070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_20417, label %dec_label_pc_20402

dec_label_pc_20402:                               ; preds = %dec_label_pc_203f1
  call void @printIntLine(i32 4)
  br label %dec_label_pc_20417

dec_label_pc_20417:                               ; preds = %dec_label_pc_203f1.thread, %dec_label_pc_20402, %dec_label_pc_203f1
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

