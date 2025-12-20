@global_var_63078 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2fc19:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63078, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2fc70, label %dec_label_pc_2fc37

dec_label_pc_2fc37:                               ; preds = %dec_label_pc_2fc19
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = icmp eq i64 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2fc70, label %dec_label_pc_2fc63

dec_label_pc_2fc63:                               ; preds = %dec_label_pc_2fc37
  %7 = inttoptr i64 %2 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2fc70

dec_label_pc_2fc70:                               ; preds = %dec_label_pc_2fc63, %dec_label_pc_2fc37, %dec_label_pc_2fc19
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

