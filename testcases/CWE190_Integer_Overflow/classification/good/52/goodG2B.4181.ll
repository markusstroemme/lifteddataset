@global_var_70d9e = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_174d4:
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1759b:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_175fd:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_17624, label %dec_label_pc_17612

dec_label_pc_17612:                               ; preds = %dec_label_pc_175fd
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_17624

dec_label_pc_17624:                               ; preds = %dec_label_pc_17612, %dec_label_pc_175fd
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

