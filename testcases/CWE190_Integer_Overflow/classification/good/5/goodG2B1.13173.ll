@staticTrue = external local_unnamed_addr global i32
@staticFalse = external local_unnamed_addr global i32
@global_var_71f5c = external constant [21 x i8]
@global_var_76ce9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3766e:
  %0 = load i32, ptr @staticFalse, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_376a5, label %dec_label_pc_376a5.thread

dec_label_pc_376a5.thread:                        ; preds = %dec_label_pc_3766e
  call void @printLine(ptr @global_var_71f5c)
  br label %dec_label_pc_376cd

dec_label_pc_376a5:                               ; preds = %dec_label_pc_3766e
  %2 = load i32, ptr @staticTrue, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_376cd, label %dec_label_pc_376b6

dec_label_pc_376b6:                               ; preds = %dec_label_pc_376a5
  call void @printLongLongLine(i64 4)
  br label %dec_label_pc_376cd

dec_label_pc_376cd:                               ; preds = %dec_label_pc_376a5.thread, %dec_label_pc_376b6, %dec_label_pc_376a5
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

