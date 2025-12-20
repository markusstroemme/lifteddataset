@CWE190_Integer_Overflow__int_rand_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_888d8 = external constant [21 x i8]
@global_var_888f0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4b6f1:
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
  store i32 0, ptr @CWE190_Integer_Overflow__int_rand_preinc_22_goodB2G1Global, align 4
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_4b86b:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_rand_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4b895, label %dec_label_pc_4b884

dec_label_pc_4b884:                               ; preds = %dec_label_pc_4b86b
  call void @printLine(ptr @global_var_888d8)
  br label %dec_label_pc_4b8c3

dec_label_pc_4b895:                               ; preds = %dec_label_pc_4b86b
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_4b8b4, label %dec_label_pc_4b89e

dec_label_pc_4b89e:                               ; preds = %dec_label_pc_4b895
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4b8c3

dec_label_pc_4b8b4:                               ; preds = %dec_label_pc_4b895
  call void @printLine(ptr @global_var_888f0)
  br label %dec_label_pc_4b8c3

dec_label_pc_4b8c3:                               ; preds = %dec_label_pc_4b8b4, %dec_label_pc_4b89e, %dec_label_pc_4b884
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

