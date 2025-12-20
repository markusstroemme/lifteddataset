@CWE190_Integer_Overflow__int_rand_square_68_goodB2GData = external local_unnamed_addr global i32
@global_var_716c0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_199ab:
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
  store i32 %storemerge.in, ptr @CWE190_Integer_Overflow__int_rand_square_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_19a97:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_square_68_goodB2GData, align 4
  %.off = add i32 %0, 46339
  %1 = icmp ugt i32 %.off, 92678
  br i1 %1, label %dec_label_pc_19adc, label %dec_label_pc_19ac7

dec_label_pc_19ac7:                               ; preds = %dec_label_pc_19a97
  %2 = mul i32 %0, %0
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_19aec

dec_label_pc_19adc:                               ; preds = %dec_label_pc_19a97
  call void @printLine(ptr @global_var_716c0)
  br label %dec_label_pc_19aec

dec_label_pc_19aec:                               ; preds = %dec_label_pc_19adc, %dec_label_pc_19ac7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
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

declare i32 @puts(ptr) local_unnamed_addr

