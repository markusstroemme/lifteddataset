@global_var_84fd8 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8040 = external local_unnamed_addr global i32
@global_var_b81f4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3139c:
  %0 = load i32, ptr @global_var_b81f4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_313d1, label %dec_label_pc_313d1.thread

dec_label_pc_313d1.thread:                        ; preds = %dec_label_pc_3139c
  call void @printLine(ptr @global_var_84fd8)
  br label %dec_label_pc_313f3

dec_label_pc_313d1:                               ; preds = %dec_label_pc_3139c
  %2 = load i32, ptr @global_var_b8040, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_313f3, label %dec_label_pc_313e1

dec_label_pc_313e1:                               ; preds = %dec_label_pc_313d1
  call void @printIntLine(i32 4)
  br label %dec_label_pc_313f3

dec_label_pc_313f3:                               ; preds = %dec_label_pc_313d1.thread, %dec_label_pc_313e1, %dec_label_pc_313d1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

