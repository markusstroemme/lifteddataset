@CWE190_Integer_Overflow__short_rand_multiply_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_76230 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3cc51:
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
  store i32 1, ptr @CWE190_Integer_Overflow__short_rand_multiply_22_goodB2G2Global, align 4
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_3cdb9:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_rand_multiply_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i16 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_3ce0a, label %dec_label_pc_3cddc

dec_label_pc_3cddc:                               ; preds = %dec_label_pc_3cdb9
  %3 = icmp sgt i16 %data, 16382
  br i1 %3, label %dec_label_pc_3cdfb, label %dec_label_pc_3cde4

dec_label_pc_3cde4:                               ; preds = %dec_label_pc_3cddc
  %4 = mul i16 %data, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_3ce0a

dec_label_pc_3cdfb:                               ; preds = %dec_label_pc_3cddc
  call void @printLine(ptr @global_var_76230)
  br label %dec_label_pc_3ce0a

dec_label_pc_3ce0a:                               ; preds = %dec_label_pc_3cdfb, %dec_label_pc_3cde4, %dec_label_pc_3cdb9
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

