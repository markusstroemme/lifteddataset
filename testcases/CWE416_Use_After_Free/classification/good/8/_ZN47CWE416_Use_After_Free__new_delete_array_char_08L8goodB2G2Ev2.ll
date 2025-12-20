define i32 @staticReturnsTrue.398() local_unnamed_addr {
dec_label_pc_1a71c:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a83f:
  %0 = call i32 @staticReturnsTrue.398()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1a8a3, label %dec_label_pc_1a861

dec_label_pc_1a861:                               ; preds = %dec_label_pc_1a83f
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_1a8a3, label %dec_label_pc_1a897

dec_label_pc_1a897:                               ; preds = %dec_label_pc_1a861
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1a8a3

dec_label_pc_1a8a3:                               ; preds = %dec_label_pc_1a897, %dec_label_pc_1a861, %dec_label_pc_1a83f
  %10 = call i32 @staticReturnsTrue.398()
  %11 = sext i32 %10 to i64
  ret i64 %11
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

