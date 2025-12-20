@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4b57e:
  call void @anon1(i32 2147483647)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4b612:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_4b639, label %dec_label_pc_4b627

dec_label_pc_4b627:                               ; preds = %dec_label_pc_4b612
  %1 = mul i32 %data, 2
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_4b639

dec_label_pc_4b639:                               ; preds = %dec_label_pc_4b627, %dec_label_pc_4b612
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

