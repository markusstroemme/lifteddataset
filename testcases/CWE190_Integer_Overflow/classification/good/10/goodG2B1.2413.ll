@global_var_70690 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1076b:
  %0 = load i32, ptr @global_var_a92c0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_107a0, label %dec_label_pc_107a0.thread

dec_label_pc_107a0.thread:                        ; preds = %dec_label_pc_1076b
  call void @printLine(ptr @global_var_70690)
  br label %dec_label_pc_107c2

dec_label_pc_107a0:                               ; preds = %dec_label_pc_1076b
  %2 = load i32, ptr @global_var_a9070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_107c2, label %dec_label_pc_107b0

dec_label_pc_107b0:                               ; preds = %dec_label_pc_107a0
  call void @printIntLine(i32 4)
  br label %dec_label_pc_107c2

dec_label_pc_107c2:                               ; preds = %dec_label_pc_107a0.thread, %dec_label_pc_107b0, %dec_label_pc_107a0
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

