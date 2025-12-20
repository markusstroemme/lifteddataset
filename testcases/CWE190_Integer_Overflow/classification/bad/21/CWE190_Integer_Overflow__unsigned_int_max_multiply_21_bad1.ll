@global_var_70d9e = external constant [4 x i8]
@global_var_9c1a0 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_22fcd:
  %0 = load i32, ptr @global_var_9c1a0, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_22ffe, label %dec_label_pc_22fec

dec_label_pc_22fec:                               ; preds = %dec_label_pc_22fcd
  %3 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_22ffe

dec_label_pc_22ffe:                               ; preds = %dec_label_pc_22fec, %dec_label_pc_22fcd
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_23001:
  store i32 1, ptr @global_var_9c1a0, align 4
  call void @anon1(i32 -1)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

