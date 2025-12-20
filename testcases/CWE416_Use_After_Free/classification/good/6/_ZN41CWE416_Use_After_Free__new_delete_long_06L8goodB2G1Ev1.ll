define i64 @anon0() local_unnamed_addr {
dec_label_pc_36edd:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i64 5, ptr %1, align 8
  %2 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_36f20, label %dec_label_pc_36f13

dec_label_pc_36f13:                               ; preds = %dec_label_pc_36edd
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36f20

dec_label_pc_36f20:                               ; preds = %dec_label_pc_36f13, %dec_label_pc_36edd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

