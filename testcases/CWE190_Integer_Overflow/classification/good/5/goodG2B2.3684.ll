@global_var_8c829 = external constant [5 x i8]
@global_var_bc028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_163bb:
  %0 = load i32, ptr @global_var_bc028, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16404, label %dec_label_pc_163eb

dec_label_pc_163eb:                               ; preds = %dec_label_pc_163bb
  call void @printLongLongLine(i64 3)
  br label %dec_label_pc_16404

dec_label_pc_16404:                               ; preds = %dec_label_pc_163eb, %dec_label_pc_163bb
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

