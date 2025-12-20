@global_var_70d9e = external constant [4 x i8]
@global_var_9c164 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1f539:
  %0 = load i32, ptr @global_var_9c164, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1f565, label %dec_label_pc_1f552

dec_label_pc_1f552:                               ; preds = %dec_label_pc_1f539
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1f565

dec_label_pc_1f565:                               ; preds = %dec_label_pc_1f552, %dec_label_pc_1f539
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1f568:
  store i32 1, ptr @global_var_9c164, align 4
  call void @anon1(i32 -1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

