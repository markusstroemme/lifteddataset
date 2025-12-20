@global_var_83678 = external constant [4 x i8]
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_16d39:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83678, ptr nonnull %stack_var_-32)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = add i64 %3, 1
  store i64 %4, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_16dc7, label %dec_label_pc_16dc2

dec_label_pc_16dc2:                               ; preds = %dec_label_pc_16d39
  call void @__stack_chk_fail()
  br label %dec_label_pc_16dc7

dec_label_pc_16dc7:                               ; preds = %dec_label_pc_16dc2, %dec_label_pc_16d39
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

