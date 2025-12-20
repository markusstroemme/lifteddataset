@global_var_8d818 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ecb9:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = urem i32 %0, 2
  %7 = icmp eq i32 %6, 0
  %8 = zext i32 %1 to i64
  %9 = mul i64 %8, 1152921504606846976
  %10 = zext i32 %2 to i64
  %11 = mul i64 %10, 35184372088832
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 1073741824
  %14 = sext i32 %4 to i64
  %15 = mul i64 %14, 32768
  %16 = sext i32 %5 to i64
  %17 = sext i1 %7 to i64
  %18 = xor i64 %9, %17
  %19 = xor i64 %18, %11
  %20 = xor i64 %19, %13
  %21 = xor i64 %20, %15
  %storemerge3.le = xor i64 %21, %16
  %stack_var_-40.0.off0.off = add i64 %storemerge3.le, 3037000499
  %22 = icmp ugt i64 %stack_var_-40.0.off0.off, 6074000998
  br i1 %22, label %dec_label_pc_2ecee, label %dec_label_pc_2ecd4

dec_label_pc_2ecd4:                               ; preds = %dec_label_pc_2ecb9
  %23 = mul i64 %storemerge3.le, %storemerge3.le
  call void @printLongLongLine(i64 %23)
  br label %dec_label_pc_2ed07

dec_label_pc_2ecee:                               ; preds = %dec_label_pc_2ecb9
  call void @printLine(ptr @global_var_8d818)
  br label %dec_label_pc_2ed07

dec_label_pc_2ed07:                               ; preds = %dec_label_pc_2ecd4, %dec_label_pc_2ecee
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

