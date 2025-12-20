@global_var_7a994 = external constant [4 x i8]
@global_var_a902c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1aa7a:
  %0 = load i32, ptr @global_var_a902c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1aabe, label %dec_label_pc_1aaa8

dec_label_pc_1aaa8:                               ; preds = %dec_label_pc_1aa7a
  call void @printIntLine(i32 3)
  br label %dec_label_pc_1aabe

dec_label_pc_1aabe:                               ; preds = %dec_label_pc_1aaa8, %dec_label_pc_1aa7a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

