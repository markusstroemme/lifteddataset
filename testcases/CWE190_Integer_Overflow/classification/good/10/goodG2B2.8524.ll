@global_var_8c32c = external constant [4 x i8]
@global_var_b8070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3305c:
  %0 = load i32, ptr @global_var_b8070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_330a2, label %dec_label_pc_33090

dec_label_pc_33090:                               ; preds = %dec_label_pc_3305c
  call void @printIntLine(i32 4)
  br label %dec_label_pc_330a2

dec_label_pc_330a2:                               ; preds = %dec_label_pc_33090, %dec_label_pc_3305c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

