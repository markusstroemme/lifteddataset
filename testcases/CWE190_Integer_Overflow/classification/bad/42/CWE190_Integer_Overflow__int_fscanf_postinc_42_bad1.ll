@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_86f80 = external constant [3 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_38d89:
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_86f80)
  ret i32 %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_38dbf:
  %0 = call i32 @anon1(i32 0)
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

