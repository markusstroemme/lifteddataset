@global_var_6a910 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @staticReturnsTrue.830() local_unnamed_addr {
dec_label_pc_2593e:
  ret i32 1
}

define i32 @staticReturnsFalse.831() local_unnamed_addr {
dec_label_pc_2594d:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_259a8:
  %0 = call i32 @staticReturnsTrue.830()
  %1 = call i32 @staticReturnsFalse.831()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_25a03, label %dec_label_pc_259de

dec_label_pc_259de:                               ; preds = %dec_label_pc_259a8
  call void @printLine(ptr @global_var_6a910)
  br label %dec_label_pc_25a28

dec_label_pc_25a03:                               ; preds = %dec_label_pc_259a8
  %3 = icmp ne i32 %0, 0
  %spec.select = sext i1 %3 to i32
  %4 = mul nsw i32 %spec.select, %spec.select
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_25a28

dec_label_pc_25a28:                               ; preds = %dec_label_pc_25a03, %dec_label_pc_259de
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

