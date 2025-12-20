@CWE190_Integer_Overflow__int_rand_multiply_68_badData = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14232:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  store i32 %storemerge.in, ptr @CWE190_Integer_Overflow__int_rand_multiply_68_badData, align 4
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1436f:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_multiply_68_badData, align 4
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1439c, label %dec_label_pc_1438a

dec_label_pc_1438a:                               ; preds = %dec_label_pc_1436f
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1439c

dec_label_pc_1439c:                               ; preds = %dec_label_pc_1438a, %dec_label_pc_1436f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

