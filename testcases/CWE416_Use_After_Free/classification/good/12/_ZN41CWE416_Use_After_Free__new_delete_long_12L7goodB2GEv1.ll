define i64 @anon0() local_unnamed_addr {
dec_label_pc_37ae7:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  br i1 %3, label %dec_label_pc_37b3a, label %dec_label_pc_37b09

dec_label_pc_37b09:                               ; preds = %dec_label_pc_37ae7
  br i1 %6, label %dec_label_pc_37b69, label %dec_label_pc_37b2b

dec_label_pc_37b2b:                               ; preds = %dec_label_pc_37b09
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_37b69

dec_label_pc_37b3a:                               ; preds = %dec_label_pc_37ae7
  br i1 %6, label %dec_label_pc_37b69, label %dec_label_pc_37b5c

dec_label_pc_37b5c:                               ; preds = %dec_label_pc_37b3a
  %8 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_37b69

dec_label_pc_37b69:                               ; preds = %dec_label_pc_37b5c, %dec_label_pc_37b3a, %dec_label_pc_37b2b, %dec_label_pc_37b09
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = sext i32 %9 to i64
  ret i64 %10
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

