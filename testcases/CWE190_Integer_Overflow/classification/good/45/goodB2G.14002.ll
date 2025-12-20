@CWE190_Integer_Overflow__short_rand_multiply_45_goodB2GData = external local_unnamed_addr global i16
@global_var_763b8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3da26:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_goodB2GData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_3da72, label %dec_label_pc_3da44

dec_label_pc_3da44:                               ; preds = %dec_label_pc_3da26
  %2 = icmp sgt i16 %0, 16382
  br i1 %2, label %dec_label_pc_3da63, label %dec_label_pc_3da4c

dec_label_pc_3da4c:                               ; preds = %dec_label_pc_3da44
  %3 = mul i16 %0, 2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3da72

dec_label_pc_3da63:                               ; preds = %dec_label_pc_3da44
  call void @printLine(ptr @global_var_763b8)
  br label %dec_label_pc_3da72

dec_label_pc_3da72:                               ; preds = %dec_label_pc_3da63, %dec_label_pc_3da4c, %dec_label_pc_3da26
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3da75:
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
  store i16 %9, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_goodB2GData, align 2
  call void @anon0()
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

