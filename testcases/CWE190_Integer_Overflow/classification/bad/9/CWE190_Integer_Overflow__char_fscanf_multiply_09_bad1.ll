@global_var_6c858 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_fcf8:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6c858, ptr nonnull %stack_var_-18)
  %3 = load i8, ptr %stack_var_-18, align 1
  %4 = icmp slt i8 %3, 1
  br i1 %4, label %dec_label_pc_fd69, label %dec_label_pc_fd55

dec_label_pc_fd55:                                ; preds = %dec_label_pc_fcf8
  %5 = mul i8 %3, 2
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_fd69

dec_label_pc_fd69:                                ; preds = %dec_label_pc_fd55, %dec_label_pc_fcf8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_fd7e, label %dec_label_pc_fd79

dec_label_pc_fd79:                                ; preds = %dec_label_pc_fd69
  call void @__stack_chk_fail()
  br label %dec_label_pc_fd7e

dec_label_pc_fd7e:                                ; preds = %dec_label_pc_fd79, %dec_label_pc_fd69
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

