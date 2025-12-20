@global_var_71ac0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define i64 @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_34f53:
  %stack_var_-16 = alloca i64, align 8
  store i64 %data, ptr %stack_var_-16, align 8
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_71ac0, ptr nonnull %stack_var_-16)
  %2 = load i64, ptr %stack_var_-16, align 8
  ret i64 %2
}

define void @anon0() local_unnamed_addr {
dec_label_pc_34f8b:
  %0 = call i64 @anon1(i64 0)
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

