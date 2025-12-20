define i64 @anon0() local_unnamed_addr {
dec_label_pc_35005:
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  store i32 5, ptr %1, align 4
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_35051, label %dec_label_pc_35044

dec_label_pc_35044:                               ; preds = %dec_label_pc_35005
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 4)
  br label %dec_label_pc_35051

dec_label_pc_35051:                               ; preds = %dec_label_pc_35044, %dec_label_pc_35005
  ret i64 0
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

