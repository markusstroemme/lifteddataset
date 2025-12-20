define i64 @anon0() local_unnamed_addr {
dec_label_pc_1af66:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1afca, label %dec_label_pc_1af88

dec_label_pc_1af88:                               ; preds = %dec_label_pc_1af66
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_1afca, label %dec_label_pc_1afbe

dec_label_pc_1afbe:                               ; preds = %dec_label_pc_1af88
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1afca

dec_label_pc_1afca:                               ; preds = %dec_label_pc_1afbe, %dec_label_pc_1af88, %dec_label_pc_1af66
  %10 = call i32 @globalReturnsTrue()
  %11 = sext i32 %10 to i64
  ret i64 %11
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

