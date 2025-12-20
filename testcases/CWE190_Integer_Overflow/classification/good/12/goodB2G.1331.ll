@global_var_6fdb0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b830:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %storemerge2.in, 2147483647
  br i1 %13, label %dec_label_pc_b923, label %dec_label_pc_b8f4

dec_label_pc_b8f4:                                ; preds = %dec_label_pc_b830
  br i1 %14, label %dec_label_pc_b912, label %dec_label_pc_b8fd

dec_label_pc_b8fd:                                ; preds = %dec_label_pc_b8f4
  %15 = add i32 %storemerge2.in, 1
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_b950

dec_label_pc_b912:                                ; preds = %dec_label_pc_b8f4
  call void @printLine(ptr @global_var_6fdb0)
  br label %dec_label_pc_b950

dec_label_pc_b923:                                ; preds = %dec_label_pc_b830
  br i1 %14, label %dec_label_pc_b941, label %dec_label_pc_b92c

dec_label_pc_b92c:                                ; preds = %dec_label_pc_b923
  %16 = add i32 %storemerge2.in, 1
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_b950

dec_label_pc_b941:                                ; preds = %dec_label_pc_b923
  call void @printLine(ptr @global_var_6fdb0)
  br label %dec_label_pc_b950

dec_label_pc_b950:                                ; preds = %dec_label_pc_b941, %dec_label_pc_b92c, %dec_label_pc_b912, %dec_label_pc_b8fd
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

