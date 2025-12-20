@global_var_95449 = external constant [5 x i8]

define i64 @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_16403:
  ret i64 9223372036854775807
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16423:
  %0 = call i64 @anon1(i64 0)
  %1 = icmp slt i64 %0, 1
  br i1 %1, label %dec_label_pc_16465, label %dec_label_pc_1644e

dec_label_pc_1644e:                               ; preds = %dec_label_pc_16423
  %2 = mul i64 %0, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_16465

dec_label_pc_16465:                               ; preds = %dec_label_pc_1644e, %dec_label_pc_16423
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

