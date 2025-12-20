@CWE190_Integer_Overflow__short_rand_square_45_goodB2GData = external local_unnamed_addr global i16
@global_var_67288 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d133:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_square_45_goodB2GData, align 2
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_d15c, label %dec_label_pc_d178

dec_label_pc_d15c:                                ; preds = %dec_label_pc_d133
  %5 = mul i16 %0, %0
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_d187

dec_label_pc_d178:                                ; preds = %dec_label_pc_d133
  call void @printLine(ptr @global_var_67288)
  br label %dec_label_pc_d187

dec_label_pc_d187:                                ; preds = %dec_label_pc_d178, %dec_label_pc_d15c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_d18a:
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
  store i16 %9, ptr @CWE190_Integer_Overflow__short_rand_square_45_goodB2GData, align 2
  call void @anon0()
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

