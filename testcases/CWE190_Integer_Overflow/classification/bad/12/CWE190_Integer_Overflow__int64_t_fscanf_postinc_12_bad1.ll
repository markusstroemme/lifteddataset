@global_var_83780 = external constant [4 x i8]
@global_var_83788 = external constant [54 x i8]
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_17610:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17665, label %dec_label_pc_17641

dec_label_pc_17641:                               ; preds = %dec_label_pc_17610
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83780, ptr nonnull %stack_var_-40)
  br label %dec_label_pc_1766d

dec_label_pc_17665:                               ; preds = %dec_label_pc_17610
  store i64 2, ptr %stack_var_-40, align 8
  br label %dec_label_pc_1766d

dec_label_pc_1766d:                               ; preds = %dec_label_pc_17665, %dec_label_pc_17641
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %stack_var_-40, align 8
  br i1 %6, label %dec_label_pc_1769d, label %dec_label_pc_1767b

dec_label_pc_1767b:                               ; preds = %dec_label_pc_1766d
  %8 = add i64 %7, 1
  store i64 %8, ptr %stack_var_-40, align 8
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_176e1

dec_label_pc_1769d:                               ; preds = %dec_label_pc_1766d
  %9 = icmp eq i64 %7, 9223372036854775807
  br i1 %9, label %dec_label_pc_176d2, label %dec_label_pc_176b0

dec_label_pc_176b0:                               ; preds = %dec_label_pc_1769d
  %10 = add i64 %7, 1
  store i64 %10, ptr %stack_var_-40, align 8
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_176e1

dec_label_pc_176d2:                               ; preds = %dec_label_pc_1769d
  call void @printLine(ptr @global_var_83788)
  br label %dec_label_pc_176e1

dec_label_pc_176e1:                               ; preds = %dec_label_pc_176d2, %dec_label_pc_176b0, %dec_label_pc_1767b
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_176f6, label %dec_label_pc_176f1

dec_label_pc_176f1:                               ; preds = %dec_label_pc_176e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_176f6

dec_label_pc_176f6:                               ; preds = %dec_label_pc_176f1, %dec_label_pc_176e1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

