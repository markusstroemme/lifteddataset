@global_var_704f8 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9018 = external local_unnamed_addr global i32
@global_var_a90c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f924:
  %0 = load i32, ptr @global_var_a90c8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_f959, label %dec_label_pc_f959.thread

dec_label_pc_f959.thread:                         ; preds = %dec_label_pc_f924
  call void @printLine(ptr @global_var_704f8)
  br label %dec_label_pc_f97b

dec_label_pc_f959:                                ; preds = %dec_label_pc_f924
  %2 = load i32, ptr @global_var_a9018, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_f97b, label %dec_label_pc_f969

dec_label_pc_f969:                                ; preds = %dec_label_pc_f959
  call void @printIntLine(i32 4)
  br label %dec_label_pc_f97b

dec_label_pc_f97b:                                ; preds = %dec_label_pc_f959.thread, %dec_label_pc_f969, %dec_label_pc_f959
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

