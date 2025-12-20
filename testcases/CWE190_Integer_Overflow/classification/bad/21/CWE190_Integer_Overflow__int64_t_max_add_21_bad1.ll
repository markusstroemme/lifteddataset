@global_var_95449 = external constant [5 x i8]
@global_var_c30e4 = external local_unnamed_addr global i32

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_115c2:
  %0 = load i32, ptr @global_var_c30e4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_115f4, label %dec_label_pc_115dc

dec_label_pc_115dc:                               ; preds = %dec_label_pc_115c2
  %2 = add i64 %data, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_115f4

dec_label_pc_115f4:                               ; preds = %dec_label_pc_115dc, %dec_label_pc_115c2
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_115f7:
  store i32 1, ptr @global_var_c30e4, align 4
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

