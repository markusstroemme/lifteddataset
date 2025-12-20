@CWE190_Integer_Overflow__unsigned_int_max_multiply_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_6a2d8 = external constant [21 x i8]
@global_var_6a2f0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_23200:
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_22_goodB2G1Global, align 4
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_232f0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2331a, label %dec_label_pc_23309

dec_label_pc_23309:                               ; preds = %dec_label_pc_232f0
  call void @printLine(ptr @global_var_6a2d8)
  br label %dec_label_pc_2334c

dec_label_pc_2331a:                               ; preds = %dec_label_pc_232f0
  %2 = icmp eq i32 %data, 0
  br i1 %2, label %dec_label_pc_2334c, label %dec_label_pc_23320

dec_label_pc_23320:                               ; preds = %dec_label_pc_2331a
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_23329, label %dec_label_pc_2333d

dec_label_pc_23329:                               ; preds = %dec_label_pc_23320
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2334c

dec_label_pc_2333d:                               ; preds = %dec_label_pc_23320
  call void @printLine(ptr @global_var_6a2f0)
  br label %dec_label_pc_2334c

dec_label_pc_2334c:                               ; preds = %dec_label_pc_2333d, %dec_label_pc_23329, %dec_label_pc_2331a, %dec_label_pc_23309
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

declare i32 @puts(ptr) local_unnamed_addr

