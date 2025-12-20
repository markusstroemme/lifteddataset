@global_var_81f79 = external constant [3 x i8]
@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_c633:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-17, align 1
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81f79, ptr nonnull %stack_var_-17)
  call void @anon1(ptr nonnull %stack_var_-17)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_c695, label %dec_label_pc_c690

dec_label_pc_c690:                                ; preds = %dec_label_pc_c633
  call void @__stack_chk_fail()
  br label %dec_label_pc_c695

dec_label_pc_c695:                                ; preds = %dec_label_pc_c690, %dec_label_pc_c633
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_c760:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = add i8 %2, 1
  call void @printHexCharLine(i8 %3)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

