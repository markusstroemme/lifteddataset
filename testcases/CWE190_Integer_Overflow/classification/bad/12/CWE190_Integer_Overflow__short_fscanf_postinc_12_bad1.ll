@global_var_89300 = external constant [4 x i8]
@global_var_89308 = external constant [54 x i8]
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4f8f9:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f94c, label %dec_label_pc_4f928

dec_label_pc_4f928:                               ; preds = %dec_label_pc_4f8f9
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_89300, ptr nonnull %stack_var_-22)
  br label %dec_label_pc_4f952

dec_label_pc_4f94c:                               ; preds = %dec_label_pc_4f8f9
  store i16 2, ptr %stack_var_-22, align 2
  br label %dec_label_pc_4f952

dec_label_pc_4f952:                               ; preds = %dec_label_pc_4f94c, %dec_label_pc_4f928
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-22, align 2
  br i1 %6, label %dec_label_pc_4f980, label %dec_label_pc_4f960

dec_label_pc_4f960:                               ; preds = %dec_label_pc_4f952
  %8 = add i16 %7, 1
  store i16 %8, ptr %stack_var_-22, align 2
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_4f9b9

dec_label_pc_4f980:                               ; preds = %dec_label_pc_4f952
  %10 = icmp eq i16 %7, 32767
  br i1 %10, label %dec_label_pc_4f9aa, label %dec_label_pc_4f98a

dec_label_pc_4f98a:                               ; preds = %dec_label_pc_4f980
  %11 = add i16 %7, 1
  store i16 %11, ptr %stack_var_-22, align 2
  %12 = sext i16 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_4f9b9

dec_label_pc_4f9aa:                               ; preds = %dec_label_pc_4f980
  call void @printLine(ptr @global_var_89308)
  br label %dec_label_pc_4f9b9

dec_label_pc_4f9b9:                               ; preds = %dec_label_pc_4f9aa, %dec_label_pc_4f98a, %dec_label_pc_4f960
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_4f9ce, label %dec_label_pc_4f9c9

dec_label_pc_4f9c9:                               ; preds = %dec_label_pc_4f9b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f9ce

dec_label_pc_4f9ce:                               ; preds = %dec_label_pc_4f9c9, %dec_label_pc_4f9b9
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
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

