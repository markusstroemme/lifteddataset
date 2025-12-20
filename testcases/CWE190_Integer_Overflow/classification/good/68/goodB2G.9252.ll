@CWE190_Integer_Overflow__unsigned_int_max_square_68_goodB2GData = external local_unnamed_addr global i32
@global_var_6b060 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_28887:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2892c:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_68_goodB2GData, align 4
  %.off = add i32 %0, 65534
  %1 = icmp ugt i32 %.off, 131068
  br i1 %1, label %dec_label_pc_2896a, label %dec_label_pc_28955

dec_label_pc_28955:                               ; preds = %dec_label_pc_2892c
  %2 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2897a

dec_label_pc_2896a:                               ; preds = %dec_label_pc_2892c
  call void @printLine(ptr @global_var_6b060)
  br label %dec_label_pc_2897a

dec_label_pc_2897a:                               ; preds = %dec_label_pc_2896a, %dec_label_pc_28955
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

