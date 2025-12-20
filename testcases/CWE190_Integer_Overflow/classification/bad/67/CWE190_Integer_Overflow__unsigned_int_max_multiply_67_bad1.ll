@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_24b0e:
  call void @anon1(i64 4294967295)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_24bb4:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_24be1, label %dec_label_pc_24bcf

dec_label_pc_24bcf:                               ; preds = %dec_label_pc_24bb4
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_24be1

dec_label_pc_24be1:                               ; preds = %dec_label_pc_24bcf, %dec_label_pc_24bb4
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

