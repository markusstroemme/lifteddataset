@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_16db7:
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_16e63:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_16ec0:
  call void @anon3(i64 %data)
  ret void
}

define void @anon3(i64 %data) local_unnamed_addr {
dec_label_pc_16f1d:
  call void @anon4(i64 %data)
  ret void
}

define void @anon4(i64 %data) local_unnamed_addr {
dec_label_pc_16f7a:
  %0 = icmp slt i64 %data, 1
  br i1 %0, label %dec_label_pc_16fa8, label %dec_label_pc_16f91

dec_label_pc_16f91:                               ; preds = %dec_label_pc_16f7a
  %1 = mul i64 %data, 2
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_16fa8

dec_label_pc_16fa8:                               ; preds = %dec_label_pc_16f91, %dec_label_pc_16f7a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

