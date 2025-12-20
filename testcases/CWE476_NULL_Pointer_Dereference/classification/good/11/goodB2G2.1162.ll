@global_var_47ad8 = external constant [13 x i8]
@global_var_4a58f = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_857b:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_85d4, label %dec_label_pc_85ab

dec_label_pc_85ab:                                ; preds = %dec_label_pc_857b
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, ptr %1, ptr null
  %6 = icmp eq ptr %spec.select, null
  br i1 %6, label %dec_label_pc_85c5, label %dec_label_pc_85b2

dec_label_pc_85b2:                                ; preds = %dec_label_pc_85ab
  %7 = load i8, ptr %spec.select, align 1
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_85d4

dec_label_pc_85c5:                                ; preds = %dec_label_pc_85ab
  call void @printLine(ptr @global_var_47ad8)
  br label %dec_label_pc_85d4

dec_label_pc_85d4:                                ; preds = %dec_label_pc_85c5, %dec_label_pc_85b2, %dec_label_pc_857b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

