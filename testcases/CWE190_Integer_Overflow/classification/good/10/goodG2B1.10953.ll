@global_var_8eb4a = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3070 = external local_unnamed_addr global i32
@global_var_c33e0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3e53a:
  %0 = load i32, ptr @global_var_c33e0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3e56f, label %dec_label_pc_3e56f.thread

dec_label_pc_3e56f.thread:                        ; preds = %dec_label_pc_3e53a
  call void @printLine(ptr @global_var_8eb4a)
  br label %dec_label_pc_3e591

dec_label_pc_3e56f:                               ; preds = %dec_label_pc_3e53a
  %2 = load i32, ptr @global_var_c3070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3e591, label %dec_label_pc_3e57f

dec_label_pc_3e57f:                               ; preds = %dec_label_pc_3e56f
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3e591

dec_label_pc_3e591:                               ; preds = %dec_label_pc_3e56f.thread, %dec_label_pc_3e57f, %dec_label_pc_3e56f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

