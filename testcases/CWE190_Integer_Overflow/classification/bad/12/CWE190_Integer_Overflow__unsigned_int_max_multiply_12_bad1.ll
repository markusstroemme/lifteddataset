@global_var_6a0d0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_22581:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 -1
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_225e0, label %dec_label_pc_225c6

dec_label_pc_225c6:                               ; preds = %dec_label_pc_22581
  %4 = mul i32 %., 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2260c

dec_label_pc_225e0:                               ; preds = %dec_label_pc_22581
  br i1 %1, label %dec_label_pc_225e9, label %dec_label_pc_225fd

dec_label_pc_225e9:                               ; preds = %dec_label_pc_225e0
  %5 = mul i32 %., 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_2260c

dec_label_pc_225fd:                               ; preds = %dec_label_pc_225e0
  call void @printLine(ptr @global_var_6a0d0)
  br label %dec_label_pc_2260c

dec_label_pc_2260c:                               ; preds = %dec_label_pc_225fd, %dec_label_pc_225e9, %dec_label_pc_225c6
  ret void
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

