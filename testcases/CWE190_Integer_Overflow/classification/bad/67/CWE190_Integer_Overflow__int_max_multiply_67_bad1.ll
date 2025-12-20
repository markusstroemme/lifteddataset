@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4c3fd:
  call void @anon1(i64 2147483647)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_4c4a3:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_4c4d0, label %dec_label_pc_4c4be

dec_label_pc_4c4be:                               ; preds = %dec_label_pc_4c4a3
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4c4d0

dec_label_pc_4c4d0:                               ; preds = %dec_label_pc_4c4be, %dec_label_pc_4c4a3
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

