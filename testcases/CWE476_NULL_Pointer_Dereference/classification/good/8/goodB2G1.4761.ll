@global_var_48574 = external constant [21 x i8]
@global_var_48589 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.474() local_unnamed_addr {
dec_label_pc_134e0:
  ret i32 1
}

define i32 @staticReturnsFalse.475() local_unnamed_addr {
dec_label_pc_134ef:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13540:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.474()
  %3 = call i32 @staticReturnsFalse.475()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_13581, label %dec_label_pc_13570

dec_label_pc_13570:                               ; preds = %dec_label_pc_13540
  call void @printLine(ptr @global_var_48574)
  br label %dec_label_pc_135a8

dec_label_pc_13581:                               ; preds = %dec_label_pc_13540
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, i64 %1, i64 0
  %6 = icmp eq i64 %spec.select, 0
  br i1 %6, label %dec_label_pc_13599, label %dec_label_pc_13588

dec_label_pc_13588:                               ; preds = %dec_label_pc_13581
  %7 = inttoptr i64 %spec.select to ptr
  %8 = load i64, ptr %7, align 8
  call void @printLongLine(i64 %8)
  br label %dec_label_pc_135a8

dec_label_pc_13599:                               ; preds = %dec_label_pc_13581
  call void @printLine(ptr @global_var_48589)
  br label %dec_label_pc_135a8

dec_label_pc_135a8:                               ; preds = %dec_label_pc_13599, %dec_label_pc_13588, %dec_label_pc_13570
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

