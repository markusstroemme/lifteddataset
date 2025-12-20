@CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_badData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_32f52:
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
  store i32 %storemerge.in, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_badData, align 4
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3308f:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_badData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_330bc, label %dec_label_pc_330aa

dec_label_pc_330aa:                               ; preds = %dec_label_pc_3308f
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_330bc

dec_label_pc_330bc:                               ; preds = %dec_label_pc_330aa, %dec_label_pc_3308f
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

