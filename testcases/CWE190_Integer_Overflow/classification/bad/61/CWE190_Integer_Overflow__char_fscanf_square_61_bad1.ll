@global_var_6d916 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_17fe0:
  %0 = call i8 @anon1(i8 32)
  %1 = mul i8 %0, %0
  call void @printHexCharLine(i8 %1)
  ret void
}

define i8 @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_180cd:
  %stack_var_-12 = alloca i8, align 1
  store i8 %data, ptr %stack_var_-12, align 1
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_6d916, ptr nonnull %stack_var_-12)
  %2 = load i8, ptr %stack_var_-12, align 1
  ret i8 %2
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

