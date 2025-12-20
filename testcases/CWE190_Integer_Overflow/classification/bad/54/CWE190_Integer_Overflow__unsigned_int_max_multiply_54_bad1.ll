@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2410f:
  call void @anon1(i32 -1)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_241a3:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_241f7:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_2424b:
  call void @anon4(i32 %data)
  ret void
}

define void @anon4(i32 %data) local_unnamed_addr {
dec_label_pc_2429f:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_242c6, label %dec_label_pc_242b4

dec_label_pc_242b4:                               ; preds = %dec_label_pc_2429f
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_242c6

dec_label_pc_242c6:                               ; preds = %dec_label_pc_242b4, %dec_label_pc_2429f
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

