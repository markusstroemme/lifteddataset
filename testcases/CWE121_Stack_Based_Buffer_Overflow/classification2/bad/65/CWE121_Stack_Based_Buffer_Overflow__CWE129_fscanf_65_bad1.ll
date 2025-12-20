@global_var_b6b2c = external constant [3 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_28115:
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-28, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6b2c, ptr nonnull %stack_var_-28)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_28184, label %dec_label_pc_2817f

dec_label_pc_2817f:                               ; preds = %dec_label_pc_28115
  call void @__stack_chk_fail()
  br label %dec_label_pc_28184

dec_label_pc_28184:                               ; preds = %dec_label_pc_2817f, %dec_label_pc_28115
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

