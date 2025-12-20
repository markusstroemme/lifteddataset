define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e5b9:
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  store i8 65, ptr %1, align 1
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_2e603, label %dec_label_pc_2e5f6

dec_label_pc_2e5f6:                               ; preds = %dec_label_pc_2e5b9
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 1)
  br label %dec_label_pc_2e603

dec_label_pc_2e603:                               ; preds = %dec_label_pc_2e5f6, %dec_label_pc_2e5b9
  ret i64 5
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

