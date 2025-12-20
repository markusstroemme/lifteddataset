@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68650 = external constant [3 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_16db9:
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_68650)
  ret i32 %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16def:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16e27, label %dec_label_pc_16e15

dec_label_pc_16e15:                               ; preds = %dec_label_pc_16def
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_16e27

dec_label_pc_16e27:                               ; preds = %dec_label_pc_16e15, %dec_label_pc_16def
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

