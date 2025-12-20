@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1790c:
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_179d0:
  %0 = icmp slt i64 %myStruct, 1
  br i1 %0, label %dec_label_pc_17a06, label %dec_label_pc_179ef

dec_label_pc_179ef:                               ; preds = %dec_label_pc_179d0
  %1 = mul i64 %myStruct, 2
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_17a06

dec_label_pc_17a06:                               ; preds = %dec_label_pc_179ef, %dec_label_pc_179d0
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

