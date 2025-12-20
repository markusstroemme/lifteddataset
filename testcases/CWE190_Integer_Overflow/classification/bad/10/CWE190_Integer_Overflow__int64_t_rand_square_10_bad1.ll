@global_var_95449 = external constant [5 x i8]
@global_var_c3070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2d182:
  %0 = load i32, ptr @global_var_c3070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2d260, label %dec_label_pc_2d23e

dec_label_pc_2d23e:                               ; preds = %dec_label_pc_2d182
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i32 @rand()
  %.pr = load i32, ptr @global_var_c3070, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_2d260, label %dec_label_pc_2d248

dec_label_pc_2d248:                               ; preds = %dec_label_pc_2d23e
  %9 = urem i32 %2, 2
  %10 = icmp eq i32 %9, 0
  %11 = zext i32 %3 to i64
  %12 = mul i64 %11, 1152921504606846976
  %13 = zext i32 %4 to i64
  %14 = mul i64 %13, 35184372088832
  %15 = sext i32 %5 to i64
  %16 = mul i64 %15, 1073741824
  %17 = sext i32 %6 to i64
  %18 = mul i64 %17, 32768
  %19 = sext i32 %7 to i64
  %20 = sext i1 %10 to i64
  %21 = xor i64 %12, %20
  %22 = xor i64 %21, %14
  %23 = xor i64 %22, %16
  %24 = xor i64 %23, %18
  %storemerge = xor i64 %24, %19
  %25 = mul i64 %storemerge, %storemerge
  call void @printLongLongLine(i64 %25)
  br label %dec_label_pc_2d260

dec_label_pc_2d260:                               ; preds = %dec_label_pc_2d182, %dec_label_pc_2d248, %dec_label_pc_2d23e
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

