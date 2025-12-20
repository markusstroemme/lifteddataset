@global_var_95449 = external constant [5 x i8]
@global_var_c302c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1872b:
  %0 = load i32, ptr @global_var_c302c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1877b, label %dec_label_pc_18763

dec_label_pc_18763:                               ; preds = %dec_label_pc_1872b
  %3 = zext i1 %1 to i64
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_1877b

dec_label_pc_1877b:                               ; preds = %dec_label_pc_18763, %dec_label_pc_1872b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

