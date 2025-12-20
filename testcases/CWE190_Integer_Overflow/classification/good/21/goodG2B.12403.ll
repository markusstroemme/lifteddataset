@goodG2BStatic = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_35f6f:
  %0 = load i32, ptr @goodG2BStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_35f9b, label %dec_label_pc_35f88

dec_label_pc_35f88:                               ; preds = %dec_label_pc_35f6f
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_35f9b

dec_label_pc_35f9b:                               ; preds = %dec_label_pc_35f88, %dec_label_pc_35f6f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_35f9e:
  store i32 1, ptr @goodG2BStatic, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

