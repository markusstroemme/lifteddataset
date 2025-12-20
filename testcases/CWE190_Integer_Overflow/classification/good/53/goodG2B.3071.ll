@global_var_7a994 = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_13105:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_131d5:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_13229:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_1328b:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_132b2, label %dec_label_pc_132a0

dec_label_pc_132a0:                               ; preds = %dec_label_pc_1328b
  %1 = mul i32 %data, 2
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_132b2

dec_label_pc_132b2:                               ; preds = %dec_label_pc_132a0, %dec_label_pc_1328b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

