@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_39ff4:
  call void @anon0(i64 2)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3a1d1:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_3a1fe, label %dec_label_pc_3a1ec

dec_label_pc_3a1ec:                               ; preds = %dec_label_pc_3a1d1
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3a1fe

dec_label_pc_3a1fe:                               ; preds = %dec_label_pc_3a1ec, %dec_label_pc_3a1d1
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

