@global_var_68846 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_17b5f:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_17b97, label %dec_label_pc_17b85

dec_label_pc_17b85:                               ; preds = %dec_label_pc_17b5f
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_17b97

dec_label_pc_17b97:                               ; preds = %dec_label_pc_17b85, %dec_label_pc_17b5f
  ret void
}

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_17c49:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_68846, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

