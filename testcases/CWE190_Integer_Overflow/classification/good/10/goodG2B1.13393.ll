@global_var_72114 = external constant [21 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5070 = external local_unnamed_addr global i32
@global_var_a52c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38569:
  %0 = load i32, ptr @global_var_a52c8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_385a0, label %dec_label_pc_385a0.thread

dec_label_pc_385a0.thread:                        ; preds = %dec_label_pc_38569
  call void @printLine(ptr @global_var_72114)
  br label %dec_label_pc_385c8

dec_label_pc_385a0:                               ; preds = %dec_label_pc_38569
  %2 = load i32, ptr @global_var_a5070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_385c8, label %dec_label_pc_385b1

dec_label_pc_385b1:                               ; preds = %dec_label_pc_385a0
  call void @printLongLongLine(i64 4)
  br label %dec_label_pc_385c8

dec_label_pc_385c8:                               ; preds = %dec_label_pc_385a0.thread, %dec_label_pc_385b1, %dec_label_pc_385a0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

