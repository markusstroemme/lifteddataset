@CWE190_Integer_Overflow__short_rand_add_68_goodB2GData = external local_unnamed_addr global i16
@global_var_75ca0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_39c74:
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
  store i16 %9, ptr @CWE190_Integer_Overflow__short_rand_add_68_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_39d62:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_rand_add_68_goodB2GData, align 2
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_39d99, label %dec_label_pc_39d81

dec_label_pc_39d81:                               ; preds = %dec_label_pc_39d62
  %2 = add i16 %0, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_39da8

dec_label_pc_39d99:                               ; preds = %dec_label_pc_39d62
  call void @printLine(ptr @global_var_75ca0)
  br label %dec_label_pc_39da8

dec_label_pc_39da8:                               ; preds = %dec_label_pc_39d99, %dec_label_pc_39d81
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

