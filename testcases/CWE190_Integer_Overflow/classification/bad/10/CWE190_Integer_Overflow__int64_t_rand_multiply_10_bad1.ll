@global_var_95449 = external constant [5 x i8]
@global_var_c3070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25808:
  %0 = load i32, ptr @global_var_c3070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_258ec, label %dec_label_pc_258c4

dec_label_pc_258c4:                               ; preds = %dec_label_pc_25808
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
  %24 = load i32, ptr @global_var_c3070, align 4
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i64 %storemerge, 1
  %or.cond = or i1 %25, %26
  br i1 %or.cond, label %dec_label_pc_258ec, label %dec_label_pc_258d5

dec_label_pc_258d5:                               ; preds = %dec_label_pc_258c4
  %27 = mul i64 %storemerge, 2
  call void @printLongLongLine(i64 %27)
  br label %dec_label_pc_258ec

dec_label_pc_258ec:                               ; preds = %dec_label_pc_25808, %dec_label_pc_258d5, %dec_label_pc_258c4
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

