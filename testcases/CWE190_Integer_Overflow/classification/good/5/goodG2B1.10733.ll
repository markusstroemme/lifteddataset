@global_var_8e98a = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3050 = external local_unnamed_addr global i32
@global_var_c332c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ccc1:
  %0 = load i32, ptr @global_var_c332c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3ccf6, label %dec_label_pc_3ccf6.thread

dec_label_pc_3ccf6.thread:                        ; preds = %dec_label_pc_3ccc1
  call void @printLine(ptr @global_var_8e98a)
  br label %dec_label_pc_3cd18

dec_label_pc_3ccf6:                               ; preds = %dec_label_pc_3ccc1
  %2 = load i32, ptr @global_var_c3050, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3cd18, label %dec_label_pc_3cd06

dec_label_pc_3cd06:                               ; preds = %dec_label_pc_3ccf6
  call void @printIntLine(i32 4)
  br label %dec_label_pc_3cd18

dec_label_pc_3cd18:                               ; preds = %dec_label_pc_3ccf6.thread, %dec_label_pc_3cd06, %dec_label_pc_3ccf6
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

