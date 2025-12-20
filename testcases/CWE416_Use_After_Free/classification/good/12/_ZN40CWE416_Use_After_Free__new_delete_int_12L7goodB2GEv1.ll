define i64 @anon0() local_unnamed_addr {
dec_label_pc_35619:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znwm(i64 4)
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = icmp eq i64 %4, 0
  br i1 %3, label %dec_label_pc_3566b, label %dec_label_pc_3563b

dec_label_pc_3563b:                               ; preds = %dec_label_pc_35619
  br i1 %6, label %dec_label_pc_35699, label %dec_label_pc_3565c

dec_label_pc_3565c:                               ; preds = %dec_label_pc_3563b
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 4)
  br label %dec_label_pc_35699

dec_label_pc_3566b:                               ; preds = %dec_label_pc_35619
  br i1 %6, label %dec_label_pc_35699, label %dec_label_pc_3568c

dec_label_pc_3568c:                               ; preds = %dec_label_pc_3566b
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 4)
  br label %dec_label_pc_35699

dec_label_pc_35699:                               ; preds = %dec_label_pc_3568c, %dec_label_pc_3566b, %dec_label_pc_3565c, %dec_label_pc_3563b
  %11 = call i32 @globalReturnsTrueOrFalse()
  %12 = sext i32 %11 to i64
  ret i64 %12
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

