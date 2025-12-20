@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e813:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = zext i32 %0 to i64
  %2 = icmp eq i32 %0, 5
  %3 = icmp eq i1 %2, false
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2e85d, label %dec_label_pc_2e832

dec_label_pc_2e832:                               ; preds = %dec_label_pc_2e813
  %4 = call i64 @_Znwm(i64 1)
  %5 = inttoptr i64 %4 to ptr
  store i8 65, ptr %5, align 1
  %6 = icmp eq i64 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2e85d, label %dec_label_pc_2e850

dec_label_pc_2e850:                               ; preds = %dec_label_pc_2e832
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 1)
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2e85d

dec_label_pc_2e85d:                               ; preds = %dec_label_pc_2e850, %dec_label_pc_2e832, %dec_label_pc_2e813
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

