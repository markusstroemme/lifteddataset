@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_169e0:
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_16a8c:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_16ae9:
  %0 = icmp slt i64 %data, 1
  br i1 %0, label %dec_label_pc_16b17, label %dec_label_pc_16b00

dec_label_pc_16b00:                               ; preds = %dec_label_pc_16ae9
  %1 = mul i64 %data, 2
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_16b17

dec_label_pc_16b17:                               ; preds = %dec_label_pc_16b00, %dec_label_pc_16ae9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

