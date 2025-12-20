@global_var_7a994 = external constant [4 x i8]

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_3d44b:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_3d479, label %dec_label_pc_3d464

dec_label_pc_3d464:                               ; preds = %dec_label_pc_3d44b
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3d479

dec_label_pc_3d479:                               ; preds = %dec_label_pc_3d464, %dec_label_pc_3d44b
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3d47c:
  call void @anon0(i16 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

