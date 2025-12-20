@global_var_4a58f = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_84ca:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_850b, label %dec_label_pc_84fa

dec_label_pc_84fa:                                ; preds = %dec_label_pc_84ca
  %5 = load i8, ptr %1, align 1
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_850b

dec_label_pc_850b:                                ; preds = %dec_label_pc_84fa, %dec_label_pc_84ca
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

