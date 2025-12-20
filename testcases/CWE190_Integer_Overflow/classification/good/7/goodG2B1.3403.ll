@global_var_6813b = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_146f3:
  %0 = load i32, ptr @global_var_9c024, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_1473a, label %dec_label_pc_14729.thread

dec_label_pc_14729.thread:                        ; preds = %dec_label_pc_146f3
  call void @printLine(ptr @global_var_6813b)
  br label %dec_label_pc_1474c

dec_label_pc_1473a:                               ; preds = %dec_label_pc_146f3
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_1474c

dec_label_pc_1474c:                               ; preds = %dec_label_pc_14729.thread, %dec_label_pc_1473a
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

