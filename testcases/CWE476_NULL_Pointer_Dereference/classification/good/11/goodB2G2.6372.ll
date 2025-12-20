@global_var_489af = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_18b27:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_18b7c, label %dec_label_pc_18b57

dec_label_pc_18b57:                               ; preds = %dec_label_pc_18b27
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, ptr %1, ptr null
  %6 = icmp eq ptr %spec.select, null
  br i1 %6, label %dec_label_pc_18b6d, label %dec_label_pc_18b5e

dec_label_pc_18b5e:                               ; preds = %dec_label_pc_18b57
  %7 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_18b7c

dec_label_pc_18b6d:                               ; preds = %dec_label_pc_18b57
  call void @printLine(ptr @global_var_489af)
  br label %dec_label_pc_18b7c

dec_label_pc_18b7c:                               ; preds = %dec_label_pc_18b6d, %dec_label_pc_18b5e, %dec_label_pc_18b27
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

