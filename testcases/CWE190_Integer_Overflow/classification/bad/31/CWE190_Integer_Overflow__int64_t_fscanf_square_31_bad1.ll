@global_var_89fa0 = external constant [4 x i8]
@global_var_95449 = external constant [5 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_d143:
  %stack_var_-48 = alloca i128, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i128 0, ptr %stack_var_-48, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89fa0, ptr nonnull %stack_var_-48)
  %3 = load i128, ptr %stack_var_-48, align 8
  %4 = trunc i128 %3 to i64
  %5 = mul i64 %4, %4
  call void @printLongLongLine(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_d1c5, label %dec_label_pc_d1c0

dec_label_pc_d1c0:                                ; preds = %dec_label_pc_d143
  call void @__stack_chk_fail()
  br label %dec_label_pc_d1c5

dec_label_pc_d1c5:                                ; preds = %dec_label_pc_d1c0, %dec_label_pc_d143
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

