define i64 @anon0() local_unnamed_addr {
dec_label_pc_32b34:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i64 5, ptr %1, align 8
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_32b81, label %dec_label_pc_32b74

dec_label_pc_32b74:                               ; preds = %dec_label_pc_32b34
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  br label %dec_label_pc_32b81

dec_label_pc_32b81:                               ; preds = %dec_label_pc_32b74, %dec_label_pc_32b34
  ret i64 0
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

