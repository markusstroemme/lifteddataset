@global_var_89340 = external constant [4 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_50dd5:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89340, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = mul i32 %3, 65536
  %sext = add i32 %4, 65536
  %5 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_50e5b, label %dec_label_pc_50e56

dec_label_pc_50e56:                               ; preds = %dec_label_pc_50dd5
  call void @__stack_chk_fail()
  br label %dec_label_pc_50e5b

dec_label_pc_50e5b:                               ; preds = %dec_label_pc_50e56, %dec_label_pc_50dd5
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

