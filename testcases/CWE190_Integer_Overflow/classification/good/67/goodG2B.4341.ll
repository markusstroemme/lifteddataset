@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_184fd:
  call void @anon0(i64 2)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_185e4:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_18611, label %dec_label_pc_185ff

dec_label_pc_185ff:                               ; preds = %dec_label_pc_185e4
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_18611

dec_label_pc_18611:                               ; preds = %dec_label_pc_185ff, %dec_label_pc_185e4
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

