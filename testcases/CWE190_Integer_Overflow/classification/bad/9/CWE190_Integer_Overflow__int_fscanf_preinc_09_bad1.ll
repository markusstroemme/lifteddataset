@global_var_868a8 = external constant [3 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_36b2c:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_868a8, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = mul i64 %3, 4294967296
  %sext = add i64 %4, 4294967296
  %5 = ashr exact i64 %sext, 32
  store i64 %5, ptr %stack_var_-24, align 8
  %6 = trunc i64 %5 to i32
  call void @printIntLine(i32 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_36bb2, label %dec_label_pc_36bad

dec_label_pc_36bad:                               ; preds = %dec_label_pc_36b2c
  call void @__stack_chk_fail()
  br label %dec_label_pc_36bb2

dec_label_pc_36bb2:                               ; preds = %dec_label_pc_36bad, %dec_label_pc_36b2c
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

