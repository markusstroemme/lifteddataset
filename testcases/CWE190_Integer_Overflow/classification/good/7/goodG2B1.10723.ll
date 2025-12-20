@global_var_6bbc0 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2ebe0:
  %0 = load i32, ptr @global_var_9c054, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_2ec27, label %dec_label_pc_2ec16.thread

dec_label_pc_2ec16.thread:                        ; preds = %dec_label_pc_2ebe0
  call void @printLine(ptr @global_var_6bbc0)
  br label %dec_label_pc_2ec39

dec_label_pc_2ec27:                               ; preds = %dec_label_pc_2ebe0
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_2ec39

dec_label_pc_2ec39:                               ; preds = %dec_label_pc_2ec16.thread, %dec_label_pc_2ec27
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

