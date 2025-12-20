@global_var_8ea42 = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3d671:
  %0 = load i32, ptr @global_var_c3054, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_3d6b8, label %dec_label_pc_3d6a7.thread

dec_label_pc_3d6a7.thread:                        ; preds = %dec_label_pc_3d671
  call void @printLine(ptr @global_var_8ea42)
  br label %dec_label_pc_3d6ca

dec_label_pc_3d6b8:                               ; preds = %dec_label_pc_3d671
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3d6ca

dec_label_pc_3d6ca:                               ; preds = %dec_label_pc_3d6a7.thread, %dec_label_pc_3d6b8
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

