@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1ed07:
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1ed8c:
  %0 = icmp slt i8 %data, 1
  br i1 %0, label %dec_label_pc_1edb7, label %dec_label_pc_1eda3

dec_label_pc_1eda3:                               ; preds = %dec_label_pc_1ed8c
  %1 = mul i8 %data, 2
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_1edb7

dec_label_pc_1edb7:                               ; preds = %dec_label_pc_1eda3, %dec_label_pc_1ed8c
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

