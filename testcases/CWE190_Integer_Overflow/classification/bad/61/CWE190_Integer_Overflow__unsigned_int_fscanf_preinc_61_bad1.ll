@global_var_8b386 = external constant [3 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_6090a:
  %0 = call i32 @anon1(i32 0)
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_609e5:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_8b386, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

