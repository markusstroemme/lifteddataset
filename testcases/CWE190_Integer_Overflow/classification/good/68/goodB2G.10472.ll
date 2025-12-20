@CWE190_Integer_Overflow__unsigned_int_rand_add_68_goodB2GData = external local_unnamed_addr global i32
@global_var_6b9e0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2da70:
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
  store i32 %storemerge.in, ptr @CWE190_Integer_Overflow__unsigned_int_rand_add_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2db5c:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_rand_add_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_2db8c, label %dec_label_pc_2db77

dec_label_pc_2db77:                               ; preds = %dec_label_pc_2db5c
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2db9b

dec_label_pc_2db8c:                               ; preds = %dec_label_pc_2db5c
  call void @printLine(ptr @global_var_6b9e0)
  br label %dec_label_pc_2db9b

dec_label_pc_2db9b:                               ; preds = %dec_label_pc_2db8c, %dec_label_pc_2db77
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

