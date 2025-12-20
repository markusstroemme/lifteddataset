@global_var_815b4 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_8b59:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_815b4, ptr nonnull %stack_var_-18)
  %3 = load i8, ptr %stack_var_-18, align 1
  %4 = add i8 %3, 1
  store i8 %4, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_8bdf, label %dec_label_pc_8bda

dec_label_pc_8bda:                                ; preds = %dec_label_pc_8b59
  call void @__stack_chk_fail()
  br label %dec_label_pc_8bdf

dec_label_pc_8bdf:                                ; preds = %dec_label_pc_8bda, %dec_label_pc_8b59
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

