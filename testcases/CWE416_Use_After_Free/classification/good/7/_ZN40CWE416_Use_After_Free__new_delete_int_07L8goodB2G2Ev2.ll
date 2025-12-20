@global_var_6308c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34c45:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6308c, align 4
  %1 = zext i32 %0 to i64
  %2 = icmp eq i32 %0, 5
  %3 = icmp eq i1 %2, false
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_34c92, label %dec_label_pc_34c64

dec_label_pc_34c64:                               ; preds = %dec_label_pc_34c45
  %4 = call i64 @_Znwm(i64 4)
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = icmp eq i64 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_34c92, label %dec_label_pc_34c85

dec_label_pc_34c85:                               ; preds = %dec_label_pc_34c64
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 4)
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34c92

dec_label_pc_34c92:                               ; preds = %dec_label_pc_34c85, %dec_label_pc_34c64, %dec_label_pc_34c45
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

