@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1f190:
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1f215:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_1f272:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_1f2cf:
  call void @anon4(i8 %data)
  ret void
}

define void @anon4(i8 %data) local_unnamed_addr {
dec_label_pc_1f32c:
  %0 = icmp slt i8 %data, 1
  br i1 %0, label %dec_label_pc_1f357, label %dec_label_pc_1f343

dec_label_pc_1f343:                               ; preds = %dec_label_pc_1f32c
  %1 = mul i8 %data, 2
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_1f357

dec_label_pc_1f357:                               ; preds = %dec_label_pc_1f343, %dec_label_pc_1f32c
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

