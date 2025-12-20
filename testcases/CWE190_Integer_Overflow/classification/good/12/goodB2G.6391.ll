@global_var_848f0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_21a76:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 1152921504606846976
  %7 = call i32 @rand()
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 35184372088832
  %10 = call i32 @rand()
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1073741824
  %13 = call i32 @rand()
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32768
  %16 = call i32 @rand()
  %17 = sext i32 %16 to i64
  %18 = sext i1 %3 to i64
  %19 = xor i64 %6, %18
  %20 = xor i64 %19, %9
  %21 = xor i64 %20, %12
  %22 = xor i64 %21, %15
  %storemerge2 = xor i64 %22, %17
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i64 %storemerge2, 9223372036854775807
  br i1 %24, label %dec_label_pc_21c1e, label %dec_label_pc_21be2

dec_label_pc_21be2:                               ; preds = %dec_label_pc_21a76
  br i1 %25, label %dec_label_pc_21c0d, label %dec_label_pc_21bf2

dec_label_pc_21bf2:                               ; preds = %dec_label_pc_21be2
  %26 = add i64 %storemerge2, 1
  call void @printLongLongLine(i64 %26)
  br label %dec_label_pc_21c58

dec_label_pc_21c0d:                               ; preds = %dec_label_pc_21be2
  call void @printLine(ptr @global_var_848f0)
  br label %dec_label_pc_21c58

dec_label_pc_21c1e:                               ; preds = %dec_label_pc_21a76
  br i1 %25, label %dec_label_pc_21c49, label %dec_label_pc_21c2e

dec_label_pc_21c2e:                               ; preds = %dec_label_pc_21c1e
  %27 = add i64 %storemerge2, 1
  call void @printLongLongLine(i64 %27)
  br label %dec_label_pc_21c58

dec_label_pc_21c49:                               ; preds = %dec_label_pc_21c1e
  call void @printLine(ptr @global_var_848f0)
  br label %dec_label_pc_21c58

dec_label_pc_21c58:                               ; preds = %dec_label_pc_21c49, %dec_label_pc_21c2e, %dec_label_pc_21c0d, %dec_label_pc_21bf2
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

