@global_var_70d9e = external constant [4 x i8]
@global_var_9c1e8 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_26d3f:
  %0 = load i32, ptr @global_var_9c1e8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26d6b, label %dec_label_pc_26d58

dec_label_pc_26d58:                               ; preds = %dec_label_pc_26d3f
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_26d6b

dec_label_pc_26d6b:                               ; preds = %dec_label_pc_26d58, %dec_label_pc_26d3f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_26d6e:
  store i32 1, ptr @global_var_9c1e8, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

