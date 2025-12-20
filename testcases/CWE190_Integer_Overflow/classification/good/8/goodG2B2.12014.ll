@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.1196() local_unnamed_addr {
dec_label_pc_3424c:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_344dd:
  %0 = call i32 @staticReturnsTrue.1196()
  %1 = call i32 @staticReturnsTrue.1196()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_34526, label %dec_label_pc_34513

dec_label_pc_34513:                               ; preds = %dec_label_pc_344dd
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i32 0, i32 4
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_34526

dec_label_pc_34526:                               ; preds = %dec_label_pc_34513, %dec_label_pc_344dd
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

