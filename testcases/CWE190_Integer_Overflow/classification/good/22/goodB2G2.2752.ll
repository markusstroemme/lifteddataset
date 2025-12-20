@CWE190_Integer_Overflow__int_rand_multiply_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_70950 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_11e40:
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
  store i32 1, ptr @CWE190_Integer_Overflow__int_rand_multiply_22_goodB2G2Global, align 4
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11fa5:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_multiply_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_11ff0, label %dec_label_pc_11fc4

dec_label_pc_11fc4:                               ; preds = %dec_label_pc_11fa5
  %3 = icmp sgt i32 %data, 1073741822
  br i1 %3, label %dec_label_pc_11fe1, label %dec_label_pc_11fcd

dec_label_pc_11fcd:                               ; preds = %dec_label_pc_11fc4
  %4 = mul i32 %data, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_11ff0

dec_label_pc_11fe1:                               ; preds = %dec_label_pc_11fc4
  call void @printLine(ptr @global_var_70950)
  br label %dec_label_pc_11ff0

dec_label_pc_11ff0:                               ; preds = %dec_label_pc_11fe1, %dec_label_pc_11fcd, %dec_label_pc_11fa5
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

