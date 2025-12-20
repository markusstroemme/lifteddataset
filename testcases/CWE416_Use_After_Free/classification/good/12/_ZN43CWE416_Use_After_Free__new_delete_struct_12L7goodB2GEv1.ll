define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a1d2:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  br i1 %3, label %dec_label_pc_3a22f, label %dec_label_pc_3a1f4

dec_label_pc_3a1f4:                               ; preds = %dec_label_pc_3a1d2
  br i1 %8, label %dec_label_pc_3a268, label %dec_label_pc_3a220

dec_label_pc_3a220:                               ; preds = %dec_label_pc_3a1f4
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_3a268

dec_label_pc_3a22f:                               ; preds = %dec_label_pc_3a1d2
  br i1 %8, label %dec_label_pc_3a268, label %dec_label_pc_3a25b

dec_label_pc_3a25b:                               ; preds = %dec_label_pc_3a22f
  %11 = inttoptr i64 %4 to ptr
  %12 = call i64 @_ZdlPvm(ptr %11, i64 8)
  br label %dec_label_pc_3a268

dec_label_pc_3a268:                               ; preds = %dec_label_pc_3a25b, %dec_label_pc_3a22f, %dec_label_pc_3a220, %dec_label_pc_3a1f4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = sext i32 %13 to i64
  ret i64 %14
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

