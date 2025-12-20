@CWE190_Integer_Overflow__int64_t_rand_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_84af8 = external constant [21 x i8]
@global_var_84b10 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_233a6:
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
  store i32 0, ptr @CWE190_Integer_Overflow__int64_t_rand_preinc_22_goodB2G1Global, align 4
  call void @anon0(i64 %storemerge)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_235d0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_rand_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_235fb, label %dec_label_pc_235ea

dec_label_pc_235ea:                               ; preds = %dec_label_pc_235d0
  call void @printLine(ptr @global_var_84af8)
  br label %dec_label_pc_23635

dec_label_pc_235fb:                               ; preds = %dec_label_pc_235d0
  %2 = icmp eq i64 %data, 9223372036854775807
  br i1 %2, label %dec_label_pc_23626, label %dec_label_pc_2360b

dec_label_pc_2360b:                               ; preds = %dec_label_pc_235fb
  %3 = add i64 %data, 1
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_23635

dec_label_pc_23626:                               ; preds = %dec_label_pc_235fb
  call void @printLine(ptr @global_var_84b10)
  br label %dec_label_pc_23635

dec_label_pc_23635:                               ; preds = %dec_label_pc_23626, %dec_label_pc_2360b, %dec_label_pc_235ea
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

