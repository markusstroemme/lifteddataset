@global_var_4a585 = external constant [5 x i8]
@global_var_6d0d0 = external local_unnamed_addr global i32

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_d4d7:
  %0 = load i32, ptr @global_var_6d0d0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d500, label %dec_label_pc_d4f1

dec_label_pc_d4f1:                                ; preds = %dec_label_pc_d4d7
  %2 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_d500

dec_label_pc_d500:                                ; preds = %dec_label_pc_d4f1, %dec_label_pc_d4d7
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_d503:
  store i32 1, ptr @global_var_6d0d0, align 4
  call void @anon1(ptr null)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

