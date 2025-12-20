define i64 @anon0() local_unnamed_addr {
dec_label_pc_345c4:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  store i32 5, ptr %1, align 4
  %2 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_34606, label %dec_label_pc_345f9

dec_label_pc_345f9:                               ; preds = %dec_label_pc_345c4
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 4)
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34606

dec_label_pc_34606:                               ; preds = %dec_label_pc_345f9, %dec_label_pc_345c4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

