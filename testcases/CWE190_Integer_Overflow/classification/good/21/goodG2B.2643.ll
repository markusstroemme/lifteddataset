@global_var_70d9e = external constant [4 x i8]
@global_var_9c0bc = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11453:
  %0 = load i32, ptr @global_var_9c0bc, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1147f, label %dec_label_pc_1146c

dec_label_pc_1146c:                               ; preds = %dec_label_pc_11453
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1147f

dec_label_pc_1147f:                               ; preds = %dec_label_pc_1146c, %dec_label_pc_11453
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_11482:
  store i32 1, ptr @global_var_9c0bc, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

