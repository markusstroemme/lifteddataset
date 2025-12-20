@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e07b:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2e0c4, label %dec_label_pc_2e099

dec_label_pc_2e099:                               ; preds = %dec_label_pc_2e07b
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  %4 = icmp eq i64 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2e0c4, label %dec_label_pc_2e0b7

dec_label_pc_2e0b7:                               ; preds = %dec_label_pc_2e099
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 1)
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2e0c4

dec_label_pc_2e0c4:                               ; preds = %dec_label_pc_2e0b7, %dec_label_pc_2e099, %dec_label_pc_2e07b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

