@CWE190_Integer_Overflow__unsigned_int_max_add_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_69970 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1f783:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_max_add_22_goodB2G2Global, align 4
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1f894:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_add_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1f8d7, label %dec_label_pc_1f8ad

dec_label_pc_1f8ad:                               ; preds = %dec_label_pc_1f894
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_1f8c8, label %dec_label_pc_1f8b3

dec_label_pc_1f8b3:                               ; preds = %dec_label_pc_1f8ad
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1f8d7

dec_label_pc_1f8c8:                               ; preds = %dec_label_pc_1f8ad
  call void @printLine(ptr @global_var_69970)
  br label %dec_label_pc_1f8d7

dec_label_pc_1f8d7:                               ; preds = %dec_label_pc_1f8c8, %dec_label_pc_1f8b3, %dec_label_pc_1f894
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

