@global_var_72756 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3b572:
  %0 = call i64 @anon1(i64 0)
  %1 = icmp slt i64 %0, 1
  br i1 %1, label %dec_label_pc_3b5b4, label %dec_label_pc_3b59d

dec_label_pc_3b59d:                               ; preds = %dec_label_pc_3b572
  %2 = mul i64 %0, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_3b5b4

dec_label_pc_3b5b4:                               ; preds = %dec_label_pc_3b59d, %dec_label_pc_3b572
  ret void
}

define i64 @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_3b681:
  %stack_var_-16 = alloca i64, align 8
  store i64 %data, ptr %stack_var_-16, align 8
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_72756, ptr nonnull %stack_var_-16)
  %2 = load i64, ptr %stack_var_-16, align 8
  ret i64 %2
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

