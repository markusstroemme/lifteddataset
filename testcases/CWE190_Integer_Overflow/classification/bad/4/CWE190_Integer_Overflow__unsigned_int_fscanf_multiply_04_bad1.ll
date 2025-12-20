@global_var_68040 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_13cf9:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68040, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_13d68, label %dec_label_pc_13d56

dec_label_pc_13d56:                               ; preds = %dec_label_pc_13cf9
  %5 = mul i32 %3, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_13d68

dec_label_pc_13d68:                               ; preds = %dec_label_pc_13d56, %dec_label_pc_13cf9
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_13d7d, label %dec_label_pc_13d78

dec_label_pc_13d78:                               ; preds = %dec_label_pc_13d68
  call void @__stack_chk_fail()
  br label %dec_label_pc_13d7d

dec_label_pc_13d7d:                               ; preds = %dec_label_pc_13d78, %dec_label_pc_13d68
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

