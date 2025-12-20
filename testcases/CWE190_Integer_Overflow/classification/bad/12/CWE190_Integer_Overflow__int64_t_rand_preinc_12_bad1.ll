@global_var_848f0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_21942:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i64 2, ptr %storemerge1.reg2mem, align 8
  br i1 %1, label %dec_label_pc_21a0c, label %dec_label_pc_21969

dec_label_pc_21969:                               ; preds = %dec_label_pc_21942
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, 1152921504606846976
  %8 = call i32 @rand()
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 35184372088832
  %11 = call i32 @rand()
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1073741824
  %14 = call i32 @rand()
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32768
  %17 = call i32 @rand()
  %18 = sext i32 %17 to i64
  %19 = sext i1 %4 to i64
  %20 = xor i64 %7, %19
  %21 = xor i64 %20, %10
  %22 = xor i64 %21, %13
  %23 = xor i64 %22, %16
  %storemerge = xor i64 %23, %18
  store i64 %storemerge, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_21a0c

dec_label_pc_21a0c:                               ; preds = %dec_label_pc_21942, %dec_label_pc_21969
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %24 = call i32 @globalReturnsTrueOrFalse()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %dec_label_pc_21a35, label %dec_label_pc_21a1a

dec_label_pc_21a1a:                               ; preds = %dec_label_pc_21a0c
  %26 = add i64 %storemerge1.reload, 1
  call void @printLongLongLine(i64 %26)
  br label %dec_label_pc_21a6f

dec_label_pc_21a35:                               ; preds = %dec_label_pc_21a0c
  %27 = icmp eq i64 %storemerge1.reload, 9223372036854775807
  br i1 %27, label %dec_label_pc_21a60, label %dec_label_pc_21a45

dec_label_pc_21a45:                               ; preds = %dec_label_pc_21a35
  %28 = add i64 %storemerge1.reload, 1
  call void @printLongLongLine(i64 %28)
  br label %dec_label_pc_21a6f

dec_label_pc_21a60:                               ; preds = %dec_label_pc_21a35
  call void @printLine(ptr @global_var_848f0)
  br label %dec_label_pc_21a6f

dec_label_pc_21a6f:                               ; preds = %dec_label_pc_21a60, %dec_label_pc_21a45, %dec_label_pc_21a1a
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

