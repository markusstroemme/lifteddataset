define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a38e:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 1, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 2, ptr %3, align 4
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %dec_label_pc_3a3e6, label %dec_label_pc_3a3d9

dec_label_pc_3a3d9:                               ; preds = %dec_label_pc_3a38e
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_3a3e6

dec_label_pc_3a3e6:                               ; preds = %dec_label_pc_3a3d9, %dec_label_pc_3a38e
  ret i64 5
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

