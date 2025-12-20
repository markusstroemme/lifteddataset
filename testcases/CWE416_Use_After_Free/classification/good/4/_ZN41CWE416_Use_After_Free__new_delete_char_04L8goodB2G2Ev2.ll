define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d56a:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  store i8 65, ptr %1, align 1
  %2 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2d5a9, label %dec_label_pc_2d59c

dec_label_pc_2d59c:                               ; preds = %dec_label_pc_2d56a
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 1)
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d5a9

dec_label_pc_2d5a9:                               ; preds = %dec_label_pc_2d59c, %dec_label_pc_2d56a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

