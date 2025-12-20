@global_var_63088 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_348e1:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63088, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_3492d, label %dec_label_pc_348ff

dec_label_pc_348ff:                               ; preds = %dec_label_pc_348e1
  %2 = call i64 @_Znwm(i64 4)
  %3 = inttoptr i64 %2 to ptr
  store i32 5, ptr %3, align 4
  %4 = icmp eq i64 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3492d, label %dec_label_pc_34920

dec_label_pc_34920:                               ; preds = %dec_label_pc_348ff
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 4)
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3492d

dec_label_pc_3492d:                               ; preds = %dec_label_pc_34920, %dec_label_pc_348ff, %dec_label_pc_348e1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

