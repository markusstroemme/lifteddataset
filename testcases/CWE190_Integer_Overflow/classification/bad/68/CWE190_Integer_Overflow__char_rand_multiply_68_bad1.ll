@CWE190_Integer_Overflow__char_rand_multiply_68_badData = external local_unnamed_addr global i8
@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2c98c:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr @CWE190_Integer_Overflow__char_rand_multiply_68_badData, align 1
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ca86:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_rand_multiply_68_badData, align 1
  %1 = icmp slt i8 %0, 1
  br i1 %1, label %dec_label_pc_2cab6, label %dec_label_pc_2caa2

dec_label_pc_2caa2:                               ; preds = %dec_label_pc_2ca86
  %2 = mul i8 %0, 2
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_2cab6

dec_label_pc_2cab6:                               ; preds = %dec_label_pc_2caa2, %dec_label_pc_2ca86
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

