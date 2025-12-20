@global_var_83520 = external constant [4 x i8]
@global_var_83528 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_176f8:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_bc0b0, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_83520, ptr nonnull %stack_var_-40)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = load i64, ptr %stack_var_-40, align 8
  %7 = icmp eq i64 %6, 9223372036854775807
  br i1 %5, label %dec_label_pc_177c3, label %dec_label_pc_1777d

dec_label_pc_1777d:                               ; preds = %dec_label_pc_176f8
  br i1 %7, label %dec_label_pc_177b2, label %dec_label_pc_17790

dec_label_pc_17790:                               ; preds = %dec_label_pc_1777d
  %8 = add i64 %6, 1
  store i64 %8, ptr %stack_var_-40, align 8
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_17807

dec_label_pc_177b2:                               ; preds = %dec_label_pc_1777d
  call void @printLine(ptr @global_var_83528)
  br label %dec_label_pc_17807

dec_label_pc_177c3:                               ; preds = %dec_label_pc_176f8
  br i1 %7, label %dec_label_pc_177f8, label %dec_label_pc_177d6

dec_label_pc_177d6:                               ; preds = %dec_label_pc_177c3
  %9 = add i64 %6, 1
  store i64 %9, ptr %stack_var_-40, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_17807

dec_label_pc_177f8:                               ; preds = %dec_label_pc_177c3
  call void @printLine(ptr @global_var_83528)
  br label %dec_label_pc_17807

dec_label_pc_17807:                               ; preds = %dec_label_pc_177f8, %dec_label_pc_177d6, %dec_label_pc_177b2, %dec_label_pc_17790
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1781c, label %dec_label_pc_17817

dec_label_pc_17817:                               ; preds = %dec_label_pc_17807
  call void @__stack_chk_fail()
  br label %dec_label_pc_1781c

dec_label_pc_1781c:                               ; preds = %dec_label_pc_17817, %dec_label_pc_17807
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
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

