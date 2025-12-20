@CWE190_Integer_Overflow__char_rand_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_82d70 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_13606:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  store i32 1, ptr @CWE190_Integer_Overflow__char_rand_preinc_22_goodB2G2Global, align 4
  call void @anon0(i8 %storemerge)
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_13750:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_rand_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1379e, label %dec_label_pc_1376b

dec_label_pc_1376b:                               ; preds = %dec_label_pc_13750
  %2 = icmp eq i8 %data, 127
  br i1 %2, label %dec_label_pc_1378f, label %dec_label_pc_13771

dec_label_pc_13771:                               ; preds = %dec_label_pc_1376b
  %3 = add i8 %data, 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_1379e

dec_label_pc_1378f:                               ; preds = %dec_label_pc_1376b
  call void @printLine(ptr @global_var_82d70)
  br label %dec_label_pc_1379e

dec_label_pc_1379e:                               ; preds = %dec_label_pc_1378f, %dec_label_pc_13771, %dec_label_pc_13750
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

