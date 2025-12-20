@global_var_6bb18 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c050 = external local_unnamed_addr global i32
@global_var_9c250 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2e644:
  %0 = load i32, ptr @global_var_9c250, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2e679, label %dec_label_pc_2e679.thread

dec_label_pc_2e679.thread:                        ; preds = %dec_label_pc_2e644
  call void @printLine(ptr @global_var_6bb18)
  br label %dec_label_pc_2e69b

dec_label_pc_2e679:                               ; preds = %dec_label_pc_2e644
  %2 = load i32, ptr @global_var_9c050, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2e69b, label %dec_label_pc_2e689

dec_label_pc_2e689:                               ; preds = %dec_label_pc_2e679
  call void @printUnsignedLine(i32 4)
  br label %dec_label_pc_2e69b

dec_label_pc_2e69b:                               ; preds = %dec_label_pc_2e679.thread, %dec_label_pc_2e689, %dec_label_pc_2e679
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

