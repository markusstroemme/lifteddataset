@global_var_6822b = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32
@global_var_9c2c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14f5c:
  %0 = load i32, ptr @global_var_9c2c8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14f91, label %dec_label_pc_14f91.thread

dec_label_pc_14f91.thread:                        ; preds = %dec_label_pc_14f5c
  call void @printLine(ptr @global_var_6822b)
  br label %dec_label_pc_14fb3

dec_label_pc_14f91:                               ; preds = %dec_label_pc_14f5c
  %2 = load i32, ptr @global_var_9c068, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_14fb3, label %dec_label_pc_14fa1

dec_label_pc_14fa1:                               ; preds = %dec_label_pc_14f91
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_14fb3

dec_label_pc_14fb3:                               ; preds = %dec_label_pc_14f91.thread, %dec_label_pc_14fa1, %dec_label_pc_14f91
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

