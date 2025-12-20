define i64 @anon0() local_unnamed_addr {
dec_label_pc_32f9d:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_32fee, label %dec_label_pc_32fbf

dec_label_pc_32fbf:                               ; preds = %dec_label_pc_32f9d
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %dec_label_pc_32fee, label %dec_label_pc_32fe1

dec_label_pc_32fe1:                               ; preds = %dec_label_pc_32fbf
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_32fee

dec_label_pc_32fee:                               ; preds = %dec_label_pc_32fe1, %dec_label_pc_32fbf, %dec_label_pc_32f9d
  %8 = call i32 @globalReturnsTrue()
  %9 = sext i32 %8 to i64
  ret i64 %9
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

