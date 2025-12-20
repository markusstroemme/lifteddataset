@global_var_8b840 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_62838:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 -1
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_6288d, label %dec_label_pc_62877

dec_label_pc_62877:                               ; preds = %dec_label_pc_62838
  %4 = add nsw i32 %., 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_628b8

dec_label_pc_6288d:                               ; preds = %dec_label_pc_62838
  br i1 %1, label %dec_label_pc_62893, label %dec_label_pc_628a9

dec_label_pc_62893:                               ; preds = %dec_label_pc_6288d
  %5 = add nsw i32 %., 1
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_628b8

dec_label_pc_628a9:                               ; preds = %dec_label_pc_6288d
  call void @printLine(ptr @global_var_8b840)
  br label %dec_label_pc_628b8

dec_label_pc_628b8:                               ; preds = %dec_label_pc_628a9, %dec_label_pc_62893, %dec_label_pc_62877
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

