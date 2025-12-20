@global_var_47a4e = external constant [21 x i8]
@global_var_47a63 = external constant [13 x i8]
@global_var_4a58f = external constant [6 x i8]

define i32 @staticReturnsTrue.101() local_unnamed_addr {
dec_label_pc_7f5f:
  ret i32 1
}

define i32 @staticReturnsFalse.102() local_unnamed_addr {
dec_label_pc_7f6e:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_7fc1:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.101()
  %3 = call i32 @staticReturnsFalse.102()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_8002, label %dec_label_pc_7ff1

dec_label_pc_7ff1:                                ; preds = %dec_label_pc_7fc1
  call void @printLine(ptr @global_var_47a4e)
  br label %dec_label_pc_802b

dec_label_pc_8002:                                ; preds = %dec_label_pc_7fc1
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, ptr %1, ptr null
  %6 = icmp eq ptr %spec.select, null
  br i1 %6, label %dec_label_pc_801c, label %dec_label_pc_8009

dec_label_pc_8009:                                ; preds = %dec_label_pc_8002
  %7 = load i8, ptr %spec.select, align 1
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_802b

dec_label_pc_801c:                                ; preds = %dec_label_pc_8002
  call void @printLine(ptr @global_var_47a63)
  br label %dec_label_pc_802b

dec_label_pc_802b:                                ; preds = %dec_label_pc_801c, %dec_label_pc_8009, %dec_label_pc_7ff1
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

