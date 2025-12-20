@global_var_81560 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc010 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_88ac:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc010, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_891d, label %dec_label_pc_88f7

dec_label_pc_88f7:                                ; preds = %dec_label_pc_88ac
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81560, ptr nonnull %stack_var_-18)
  %.pr = load i32, ptr @global_var_bc010, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_891d, label %dec_label_pc_8901

dec_label_pc_8901:                                ; preds = %dec_label_pc_88f7
  %6 = load i8, ptr %stack_var_-18, align 1
  %7 = add i8 %6, 1
  store i8 %7, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_891d

dec_label_pc_891d:                                ; preds = %dec_label_pc_88ac, %dec_label_pc_8901, %dec_label_pc_88f7
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_8932, label %dec_label_pc_892d

dec_label_pc_892d:                                ; preds = %dec_label_pc_891d
  call void @__stack_chk_fail()
  br label %dec_label_pc_8932

dec_label_pc_8932:                                ; preds = %dec_label_pc_892d, %dec_label_pc_891d
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

