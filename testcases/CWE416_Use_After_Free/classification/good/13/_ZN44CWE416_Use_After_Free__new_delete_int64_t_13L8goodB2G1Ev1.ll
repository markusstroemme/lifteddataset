define i64 @anon0() local_unnamed_addr {
dec_label_pc_332fd:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i64 5, ptr %1, align 8
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_3334b, label %dec_label_pc_3333e

dec_label_pc_3333e:                               ; preds = %dec_label_pc_332fd
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  br label %dec_label_pc_3334b

dec_label_pc_3334b:                               ; preds = %dec_label_pc_3333e, %dec_label_pc_332fd
  ret i64 5
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

