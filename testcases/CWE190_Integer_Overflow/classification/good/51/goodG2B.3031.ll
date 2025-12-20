@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_12d3d:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_12e1b:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_12e42, label %dec_label_pc_12e30

dec_label_pc_12e30:                               ; preds = %dec_label_pc_12e1b
  %1 = mul i32 %data, 2
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_12e42

dec_label_pc_12e42:                               ; preds = %dec_label_pc_12e30, %dec_label_pc_12e1b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

