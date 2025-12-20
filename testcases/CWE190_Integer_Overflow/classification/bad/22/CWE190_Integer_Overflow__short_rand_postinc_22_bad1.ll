@CWE190_Integer_Overflow__short_rand_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_59ee1:
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
  store i32 1, ptr @CWE190_Integer_Overflow__short_rand_postinc_22_badGlobal, align 4
  %9 = trunc i32 %storemerge.in to i16
  call void @anon1(i16 %9)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_5a087:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_rand_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5a0c1, label %dec_label_pc_5a0a3

dec_label_pc_5a0a3:                               ; preds = %dec_label_pc_5a087
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_5a0c1

dec_label_pc_5a0c1:                               ; preds = %dec_label_pc_5a0a3, %dec_label_pc_5a087
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

