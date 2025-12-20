@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_22b34:
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
  %storemerge2.le = xor i64 %21, %16
  %22 = add i64 %storemerge2.le, 1
  call void @printLongLongLine(i64 %22)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

