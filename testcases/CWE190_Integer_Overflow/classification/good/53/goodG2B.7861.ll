@global_var_70d9e = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_23f62:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23feb:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2403f:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_240a1:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_240c8, label %dec_label_pc_240b6

dec_label_pc_240b6:                               ; preds = %dec_label_pc_240a1
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_240c8

dec_label_pc_240c8:                               ; preds = %dec_label_pc_240b6, %dec_label_pc_240a1
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

