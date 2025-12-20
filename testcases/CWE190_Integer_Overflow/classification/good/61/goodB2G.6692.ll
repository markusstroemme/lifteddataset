@global_var_69c10 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_20815:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_20850, label %dec_label_pc_2083b

dec_label_pc_2083b:                               ; preds = %dec_label_pc_20815
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2085f

dec_label_pc_20850:                               ; preds = %dec_label_pc_20815
  call void @printLine(ptr @global_var_69c10)
  br label %dec_label_pc_2085f

dec_label_pc_2085f:                               ; preds = %dec_label_pc_20850, %dec_label_pc_2083b
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_208af:
  ret i32 -1
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

