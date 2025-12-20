@global_var_83518 = external constant [4 x i8]
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16155:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_161ce, label %dec_label_pc_161a4

dec_label_pc_161a4:                               ; preds = %dec_label_pc_16155
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83518, ptr nonnull %stack_var_-32)
  %.pr = load i32, ptr @global_var_bc028, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_161ce, label %dec_label_pc_161ae

dec_label_pc_161ae:                               ; preds = %dec_label_pc_161a4
  %6 = load i64, ptr %stack_var_-32, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %7)
  br label %dec_label_pc_161ce

dec_label_pc_161ce:                               ; preds = %dec_label_pc_16155, %dec_label_pc_161ae, %dec_label_pc_161a4
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_161e3, label %dec_label_pc_161de

dec_label_pc_161de:                               ; preds = %dec_label_pc_161ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_161e3

dec_label_pc_161e3:                               ; preds = %dec_label_pc_161de, %dec_label_pc_161ce
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

