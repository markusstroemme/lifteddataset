@global_var_89636 = external constant [4 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5237e:
  %0 = call i16 @anon1(i16 0)
  %1 = add i16 %0, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define i16 @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_5247c:
  %stack_var_-12 = alloca i16, align 2
  store i16 %data, ptr %stack_var_-12, align 2
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_89636, ptr nonnull %stack_var_-12)
  %2 = load i16, ptr %stack_var_-12, align 2
  ret i16 %2
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

