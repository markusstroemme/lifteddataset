@global_var_8d6d0 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2d992:
  %storemerge2.off0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i64 2, ptr %storemerge2.off0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2da5c, label %dec_label_pc_2d9b9

dec_label_pc_2d9b9:                               ; preds = %dec_label_pc_2d992
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
  store i64 %storemerge, ptr %storemerge2.off0.reg2mem, align 8
  br label %dec_label_pc_2da5c

dec_label_pc_2da5c:                               ; preds = %dec_label_pc_2d992, %dec_label_pc_2d9b9
  %storemerge2.off0.reload = load i64, ptr %storemerge2.off0.reg2mem, align 8
  %24 = call i32 @globalReturnsTrueOrFalse()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %dec_label_pc_2da84, label %dec_label_pc_2da6a

dec_label_pc_2da6a:                               ; preds = %dec_label_pc_2da5c
  %26 = mul i64 %storemerge2.off0.reload, %storemerge2.off0.reload
  call void @printLongLongLine(i64 %26)
  br label %dec_label_pc_2dac9

dec_label_pc_2da84:                               ; preds = %dec_label_pc_2da5c
  %storemerge2.off0.off = add i64 %storemerge2.off0.reload, 3037000499
  %27 = icmp ugt i64 %storemerge2.off0.off, 6074000998
  br i1 %27, label %dec_label_pc_2daba, label %dec_label_pc_2da9f

dec_label_pc_2da9f:                               ; preds = %dec_label_pc_2da84
  %28 = mul i64 %storemerge2.off0.reload, %storemerge2.off0.reload
  call void @printLongLongLine(i64 %28)
  br label %dec_label_pc_2dac9

dec_label_pc_2daba:                               ; preds = %dec_label_pc_2da84
  call void @printLine(ptr @global_var_8d6d0)
  br label %dec_label_pc_2dac9

dec_label_pc_2dac9:                               ; preds = %dec_label_pc_2daba, %dec_label_pc_2da9f, %dec_label_pc_2da6a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_77ab9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

