@CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodB2GData = external local_unnamed_addr global i32
@global_var_6c360 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_32ff9:
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
  store i32 %storemerge.in, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_330ef:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_rand_multiply_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_33136, label %dec_label_pc_3310a

dec_label_pc_3310a:                               ; preds = %dec_label_pc_330ef
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_33113, label %dec_label_pc_33127

dec_label_pc_33113:                               ; preds = %dec_label_pc_3310a
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_33136

dec_label_pc_33127:                               ; preds = %dec_label_pc_3310a
  call void @printLine(ptr @global_var_6c360)
  br label %dec_label_pc_33136

dec_label_pc_33136:                               ; preds = %dec_label_pc_33127, %dec_label_pc_33113, %dec_label_pc_330ef
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

