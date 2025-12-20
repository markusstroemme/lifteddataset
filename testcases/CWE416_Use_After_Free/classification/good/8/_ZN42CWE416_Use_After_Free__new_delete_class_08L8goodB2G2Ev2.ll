define i32 @staticReturnsTrue.412() local_unnamed_addr {
dec_label_pc_30130:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_30242:
  %0 = call i32 @staticReturnsTrue.412()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3029d, label %dec_label_pc_30264

dec_label_pc_30264:                               ; preds = %dec_label_pc_30242
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %dec_label_pc_3029d, label %dec_label_pc_30290

dec_label_pc_30290:                               ; preds = %dec_label_pc_30264
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_3029d

dec_label_pc_3029d:                               ; preds = %dec_label_pc_30290, %dec_label_pc_30264, %dec_label_pc_30242
  %11 = call i32 @staticReturnsTrue.412()
  %12 = sext i32 %11 to i64
  ret i64 %12
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

