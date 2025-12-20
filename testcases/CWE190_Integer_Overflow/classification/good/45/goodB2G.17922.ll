@CWE190_Integer_Overflow__short_rand_preinc_45_goodB2GData = external local_unnamed_addr global i16
@global_var_8a818 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5adc4:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_preinc_45_goodB2GData, align 2
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_5ae03, label %dec_label_pc_5ade3

dec_label_pc_5ade3:                               ; preds = %dec_label_pc_5adc4
  %2 = add i16 %0, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_5ae12

dec_label_pc_5ae03:                               ; preds = %dec_label_pc_5adc4
  call void @printLine(ptr @global_var_8a818)
  br label %dec_label_pc_5ae12

dec_label_pc_5ae12:                               ; preds = %dec_label_pc_5ae03, %dec_label_pc_5ade3
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5ae15:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = trunc i32 %storemerge.in to i16
  store i16 %9, ptr @CWE190_Integer_Overflow__short_rand_preinc_45_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

