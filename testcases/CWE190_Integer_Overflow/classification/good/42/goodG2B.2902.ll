@global_var_7a994 = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_127e2:
  ret i32 2
}

define void @anon1() local_unnamed_addr {
dec_label_pc_127f9:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_12831, label %dec_label_pc_1281f

dec_label_pc_1281f:                               ; preds = %dec_label_pc_127f9
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_12831

dec_label_pc_12831:                               ; preds = %dec_label_pc_1281f, %dec_label_pc_127f9
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

