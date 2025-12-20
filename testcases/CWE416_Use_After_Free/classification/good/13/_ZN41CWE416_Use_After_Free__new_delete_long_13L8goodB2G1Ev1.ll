define i64 @anon0() local_unnamed_addr {
dec_label_pc_37c7a:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i64 5, ptr %1, align 8
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_37cc8, label %dec_label_pc_37cbb

dec_label_pc_37cbb:                               ; preds = %dec_label_pc_37c7a
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  br label %dec_label_pc_37cc8

dec_label_pc_37cc8:                               ; preds = %dec_label_pc_37cbb, %dec_label_pc_37c7a
  ret i64 5
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

