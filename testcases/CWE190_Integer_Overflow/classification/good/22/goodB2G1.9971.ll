@CWE190_Integer_Overflow__unsigned_int_rand_add_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_6b5d8 = external constant [21 x i8]
@global_var_6b5f0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2b6ab:
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
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_rand_add_22_goodB2G1Global, align 4
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2b824:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_rand_add_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b84e, label %dec_label_pc_2b83d

dec_label_pc_2b83d:                               ; preds = %dec_label_pc_2b824
  call void @printLine(ptr @global_var_6b5d8)
  br label %dec_label_pc_2b878

dec_label_pc_2b84e:                               ; preds = %dec_label_pc_2b824
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_2b869, label %dec_label_pc_2b854

dec_label_pc_2b854:                               ; preds = %dec_label_pc_2b84e
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_2b878

dec_label_pc_2b869:                               ; preds = %dec_label_pc_2b84e
  call void @printLine(ptr @global_var_6b5f0)
  br label %dec_label_pc_2b878

dec_label_pc_2b878:                               ; preds = %dec_label_pc_2b869, %dec_label_pc_2b854, %dec_label_pc_2b83d
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

