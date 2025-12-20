@global_var_69a88 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1fe41:
  ret i32 -1
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1fe58:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_1fe93, label %dec_label_pc_1fe7e

dec_label_pc_1fe7e:                               ; preds = %dec_label_pc_1fe58
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1fea2

dec_label_pc_1fe93:                               ; preds = %dec_label_pc_1fe58
  call void @printLine(ptr @global_var_69a88)
  br label %dec_label_pc_1fea2

dec_label_pc_1fea2:                               ; preds = %dec_label_pc_1fe93, %dec_label_pc_1fe7e
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

