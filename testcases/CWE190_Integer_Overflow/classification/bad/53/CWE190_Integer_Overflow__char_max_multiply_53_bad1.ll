@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1efb0:
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1f035:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_1f092:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_1f0ef:
  %0 = icmp slt i8 %data, 1
  br i1 %0, label %dec_label_pc_1f11a, label %dec_label_pc_1f106

dec_label_pc_1f106:                               ; preds = %dec_label_pc_1f0ef
  %1 = mul i8 %data, 2
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_1f11a

dec_label_pc_1f11a:                               ; preds = %dec_label_pc_1f106, %dec_label_pc_1f0ef
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

