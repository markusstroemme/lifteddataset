@goodG2BStatic = external local_unnamed_addr global i32
@global_var_8c83e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_67b1b:
  %0 = load i32, ptr @goodG2BStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_67b48, label %dec_label_pc_67b34

dec_label_pc_67b34:                               ; preds = %dec_label_pc_67b1b
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_67b48

dec_label_pc_67b48:                               ; preds = %dec_label_pc_67b34, %dec_label_pc_67b1b
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_67b4b:
  store i32 1, ptr @goodG2BStatic, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

