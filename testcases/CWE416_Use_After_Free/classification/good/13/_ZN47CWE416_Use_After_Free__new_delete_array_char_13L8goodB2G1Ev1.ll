define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b381:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %dec_label_pc_1b3e2, label %dec_label_pc_1b3d6

dec_label_pc_1b3d6:                               ; preds = %dec_label_pc_1b381
  call void @_ZdaPv(ptr %1, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1b3e2

dec_label_pc_1b3e2:                               ; preds = %dec_label_pc_1b3d6, %dec_label_pc_1b381
  ret i64 5
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

