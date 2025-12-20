@global_var_8a0a0 = external constant [4 x i8]
@global_var_95449 = external constant [5 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define i64 @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_d85f:
  %stack_var_-16 = alloca i64, align 8
  store i64 %data, ptr %stack_var_-16, align 8
  %0 = load ptr, ptr @global_var_c3080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_8a0a0, ptr nonnull %stack_var_-16)
  %2 = load i64, ptr %stack_var_-16, align 8
  ret i64 %2
}

define void @anon0() local_unnamed_addr {
dec_label_pc_d897:
  %0 = call i64 @anon1(i64 0)
  %1 = mul i64 %0, %0
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

