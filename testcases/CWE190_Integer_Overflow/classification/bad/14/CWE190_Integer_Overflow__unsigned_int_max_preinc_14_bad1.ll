@global_var_8c83e = external constant [4 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_62bc6:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_62c0a, label %dec_label_pc_62bf6

dec_label_pc_62bf6:                               ; preds = %dec_label_pc_62bc6
  %3 = icmp ne i32 %0, 5
  %4 = zext i1 %3 to i32
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_62c0a

dec_label_pc_62c0a:                               ; preds = %dec_label_pc_62bf6, %dec_label_pc_62bc6
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

