@global_var_70d9e = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_16e2a:
  ret i32 2
}

define void @anon1() local_unnamed_addr {
dec_label_pc_16e41:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16e79, label %dec_label_pc_16e67

dec_label_pc_16e67:                               ; preds = %dec_label_pc_16e41
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_16e79

dec_label_pc_16e79:                               ; preds = %dec_label_pc_16e67, %dec_label_pc_16e41
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

