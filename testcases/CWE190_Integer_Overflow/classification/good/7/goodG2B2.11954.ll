@staticFive = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_341d3:
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_34216, label %dec_label_pc_34203

dec_label_pc_34203:                               ; preds = %dec_label_pc_341d3
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_34216

dec_label_pc_34216:                               ; preds = %dec_label_pc_34203, %dec_label_pc_341d3
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

