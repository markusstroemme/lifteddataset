@CWE190_Integer_Overflow__int64_t_rand_postinc_45_badData = external local_unnamed_addr global i64
@global_var_8ca89 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_245e5:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_rand_postinc_45_badData, align 8
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_24618:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, 1152921504606846976
  %6 = call i32 @rand()
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 35184372088832
  %9 = call i32 @rand()
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1073741824
  %12 = call i32 @rand()
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 32768
  %15 = call i32 @rand()
  %16 = sext i32 %15 to i64
  %17 = sext i1 %2 to i64
  %18 = xor i64 %5, %17
  %19 = xor i64 %18, %8
  %20 = xor i64 %19, %11
  %21 = xor i64 %20, %14
  %storemerge = xor i64 %21, %16
  store i64 %storemerge, ptr @CWE190_Integer_Overflow__int64_t_rand_postinc_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

