define i64 @anon0() local_unnamed_addr {
dec_label_pc_357a1:
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  store i32 5, ptr %1, align 4
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %dec_label_pc_357ee, label %dec_label_pc_357e1

dec_label_pc_357e1:                               ; preds = %dec_label_pc_357a1
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 4)
  br label %dec_label_pc_357ee

dec_label_pc_357ee:                               ; preds = %dec_label_pc_357e1, %dec_label_pc_357a1
  ret i64 5
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

