define i32 @staticReturnsTrue.414() local_unnamed_addr {
dec_label_pc_3288a:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3298a:
  %0 = call i32 @staticReturnsTrue.414()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_329db, label %dec_label_pc_329ac

dec_label_pc_329ac:                               ; preds = %dec_label_pc_3298a
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_329db, label %dec_label_pc_329ce

dec_label_pc_329ce:                               ; preds = %dec_label_pc_329ac
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_329db

dec_label_pc_329db:                               ; preds = %dec_label_pc_329ce, %dec_label_pc_329ac, %dec_label_pc_3298a
  %8 = call i32 @staticReturnsTrue.414()
  %9 = sext i32 %8 to i64
  ret i64 %9
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

