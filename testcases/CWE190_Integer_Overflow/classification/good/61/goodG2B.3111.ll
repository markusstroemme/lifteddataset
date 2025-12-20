@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_135ea:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_13622, label %dec_label_pc_13610

dec_label_pc_13610:                               ; preds = %dec_label_pc_135ea
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_13622

dec_label_pc_13622:                               ; preds = %dec_label_pc_13610, %dec_label_pc_135ea
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_136fb:
  ret i32 2
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

