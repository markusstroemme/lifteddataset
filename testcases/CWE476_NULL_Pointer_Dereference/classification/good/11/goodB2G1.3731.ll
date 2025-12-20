@global_var_482fe = external constant [21 x i8]
@global_var_48313 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10229:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_1026a, label %dec_label_pc_10259

dec_label_pc_10259:                               ; preds = %dec_label_pc_10229
  call void @printLine(ptr @global_var_482fe)
  br label %dec_label_pc_1028f

dec_label_pc_1026a:                               ; preds = %dec_label_pc_10229
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, ptr %1, ptr null
  %6 = icmp eq ptr %spec.select, null
  br i1 %6, label %dec_label_pc_10280, label %dec_label_pc_10271

dec_label_pc_10271:                               ; preds = %dec_label_pc_1026a
  %7 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_1028f

dec_label_pc_10280:                               ; preds = %dec_label_pc_1026a
  call void @printLine(ptr @global_var_48313)
  br label %dec_label_pc_1028f

dec_label_pc_1028f:                               ; preds = %dec_label_pc_10280, %dec_label_pc_10271, %dec_label_pc_10259
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
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

