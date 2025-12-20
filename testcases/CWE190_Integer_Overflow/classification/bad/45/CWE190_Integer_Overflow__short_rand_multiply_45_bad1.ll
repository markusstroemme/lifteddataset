@CWE190_Integer_Overflow__short_rand_multiply_45_badData = external local_unnamed_addr global i16
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3d91b:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_badData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_3d94e, label %dec_label_pc_3d939

dec_label_pc_3d939:                               ; preds = %dec_label_pc_3d91b
  %2 = mul i16 %0, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_3d94e

dec_label_pc_3d94e:                               ; preds = %dec_label_pc_3d939, %dec_label_pc_3d91b
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3d951:
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
  store i16 %9, ptr @CWE190_Integer_Overflow__short_rand_multiply_45_badData, align 2
  call void @anon1()
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

