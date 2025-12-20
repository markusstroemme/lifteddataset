define i64 @anon0() local_unnamed_addr {
dec_label_pc_2de2c:
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  store i8 65, ptr %1, align 1
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_2de75, label %dec_label_pc_2de68

dec_label_pc_2de68:                               ; preds = %dec_label_pc_2de2c
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 1)
  br label %dec_label_pc_2de75

dec_label_pc_2de75:                               ; preds = %dec_label_pc_2de68, %dec_label_pc_2de2c
  ret i64 0
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

