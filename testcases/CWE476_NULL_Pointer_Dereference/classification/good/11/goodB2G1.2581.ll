@global_var_48022 = external constant [21 x i8]
@global_var_48037 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c895:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_c8d6, label %dec_label_pc_c8c5

dec_label_pc_c8c5:                                ; preds = %dec_label_pc_c895
  call void @printLine(ptr @global_var_48022)
  br label %dec_label_pc_c8fd

dec_label_pc_c8d6:                                ; preds = %dec_label_pc_c895
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, i64 %1, i64 0
  %6 = icmp eq i64 %spec.select, 0
  br i1 %6, label %dec_label_pc_c8ee, label %dec_label_pc_c8dd

dec_label_pc_c8dd:                                ; preds = %dec_label_pc_c8d6
  %7 = inttoptr i64 %spec.select to ptr
  %8 = load i64, ptr %7, align 8
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_c8fd

dec_label_pc_c8ee:                                ; preds = %dec_label_pc_c8d6
  call void @printLine(ptr @global_var_48037)
  br label %dec_label_pc_c8fd

dec_label_pc_c8fd:                                ; preds = %dec_label_pc_c8ee, %dec_label_pc_c8dd, %dec_label_pc_c8c5
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3d04e:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

