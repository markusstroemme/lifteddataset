@global_var_710b0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_16233:
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
  %storemerge2.in.off = add i32 %storemerge2.in, 46339
  %14 = icmp ugt i32 %storemerge2.in.off, 92678
  br i1 %13, label %dec_label_pc_16338, label %dec_label_pc_162f7

dec_label_pc_162f7:                               ; preds = %dec_label_pc_16233
  br i1 %14, label %dec_label_pc_16327, label %dec_label_pc_16312

dec_label_pc_16312:                               ; preds = %dec_label_pc_162f7
  %15 = mul i32 %storemerge2.in, %storemerge2.in
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_16379

dec_label_pc_16327:                               ; preds = %dec_label_pc_162f7
  call void @printLine(ptr @global_var_710b0)
  br label %dec_label_pc_16379

dec_label_pc_16338:                               ; preds = %dec_label_pc_16233
  br i1 %14, label %dec_label_pc_16368, label %dec_label_pc_16353

dec_label_pc_16353:                               ; preds = %dec_label_pc_16338
  %16 = mul i32 %storemerge2.in, %storemerge2.in
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_16379

dec_label_pc_16368:                               ; preds = %dec_label_pc_16338
  call void @printLine(ptr @global_var_710b0)
  br label %dec_label_pc_16379

dec_label_pc_16379:                               ; preds = %dec_label_pc_16368, %dec_label_pc_16353, %dec_label_pc_16327, %dec_label_pc_16312
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

