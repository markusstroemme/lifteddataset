define i64 @anon0() local_unnamed_addr {
dec_label_pc_35457:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_354a7, label %dec_label_pc_35479

dec_label_pc_35479:                               ; preds = %dec_label_pc_35457
  %4 = call i64 @_Znwm(i64 4)
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_354a7, label %dec_label_pc_3549a

dec_label_pc_3549a:                               ; preds = %dec_label_pc_35479
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 4)
  br label %dec_label_pc_354a7

dec_label_pc_354a7:                               ; preds = %dec_label_pc_3549a, %dec_label_pc_35479, %dec_label_pc_35457
  %9 = call i32 @globalReturnsTrue()
  %10 = sext i32 %9 to i64
  ret i64 %10
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

