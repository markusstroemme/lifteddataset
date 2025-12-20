@global_var_95449 = external constant [5 x i8]
@global_var_c303c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_24bca:
  %0 = load i32, ptr @global_var_c303c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_24cb0, label %dec_label_pc_24c87

dec_label_pc_24c87:                               ; preds = %dec_label_pc_24bca
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 1152921504606846976
  %9 = call i32 @rand()
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 35184372088832
  %12 = call i32 @rand()
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1073741824
  %15 = call i32 @rand()
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 32768
  %18 = call i32 @rand()
  %19 = sext i32 %18 to i64
  %20 = sext i1 %5 to i64
  %21 = xor i64 %8, %20
  %22 = xor i64 %21, %11
  %23 = xor i64 %22, %14
  %24 = xor i64 %23, %17
  %storemerge = xor i64 %24, %19
  %25 = load i32, ptr @global_var_c303c, align 4
  %26 = icmp eq i32 %25, 5
  %27 = icmp eq i1 %26, false
  %28 = icmp slt i64 %storemerge, 1
  %or.cond = or i1 %27, %28
  br i1 %or.cond, label %dec_label_pc_24cb0, label %dec_label_pc_24c99

dec_label_pc_24c99:                               ; preds = %dec_label_pc_24c87
  %29 = mul i64 %storemerge, 2
  call void @printLongLongLine(i64 %29)
  br label %dec_label_pc_24cb0

dec_label_pc_24cb0:                               ; preds = %dec_label_pc_24bca, %dec_label_pc_24c99, %dec_label_pc_24c87
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

