@CWE190_Integer_Overflow__int64_t_rand_square_22_badGlobal = external local_unnamed_addr global i32
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f3ad:
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
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_rand_square_22_badGlobal, align 4
  call void @anon1(i64 %storemerge)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_2f66c:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_rand_square_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2f69e, label %dec_label_pc_2f686

dec_label_pc_2f686:                               ; preds = %dec_label_pc_2f66c
  %2 = mul i64 %data, %data
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_2f69e

dec_label_pc_2f69e:                               ; preds = %dec_label_pc_2f686, %dec_label_pc_2f66c
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

