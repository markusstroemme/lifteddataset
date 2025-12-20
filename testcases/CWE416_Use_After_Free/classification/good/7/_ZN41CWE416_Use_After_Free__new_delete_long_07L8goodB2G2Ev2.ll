@global_var_63094 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_370dc:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63094, align 4
  %1 = zext i32 %0 to i64
  %2 = icmp eq i32 %0, 5
  %3 = icmp eq i1 %2, false
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3712a, label %dec_label_pc_370fb

dec_label_pc_370fb:                               ; preds = %dec_label_pc_370dc
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3712a, label %dec_label_pc_3711d

dec_label_pc_3711d:                               ; preds = %dec_label_pc_370fb
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3712a

dec_label_pc_3712a:                               ; preds = %dec_label_pc_3711d, %dec_label_pc_370fb, %dec_label_pc_370dc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

