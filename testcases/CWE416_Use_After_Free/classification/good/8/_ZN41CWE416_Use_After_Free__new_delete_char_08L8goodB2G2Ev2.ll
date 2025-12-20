define i32 @staticReturnsTrue.410() local_unnamed_addr {
dec_label_pc_2db92:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2dc8c:
  %0 = call i32 @staticReturnsTrue.410()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2dcd9, label %dec_label_pc_2dcae

dec_label_pc_2dcae:                               ; preds = %dec_label_pc_2dc8c
  %4 = call i64 @_Znwm(i64 1)
  %5 = inttoptr i64 %4 to ptr
  store i8 65, ptr %5, align 1
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_2dcd9, label %dec_label_pc_2dccc

dec_label_pc_2dccc:                               ; preds = %dec_label_pc_2dcae
  %7 = inttoptr i64 %4 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 1)
  br label %dec_label_pc_2dcd9

dec_label_pc_2dcd9:                               ; preds = %dec_label_pc_2dccc, %dec_label_pc_2dcae, %dec_label_pc_2dc8c
  %9 = call i32 @staticReturnsTrue.410()
  %10 = sext i32 %9 to i64
  ret i64 %10
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

