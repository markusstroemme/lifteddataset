@CWE190_Integer_Overflow__unsigned_int_max_square_45_goodB2GData = external local_unnamed_addr global i32
@global_var_6adf8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_277d6:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_45_goodB2GData, align 4
  %.off = add i32 %0, 65534
  %1 = icmp ugt i32 %.off, 131068
  br i1 %1, label %dec_label_pc_27814, label %dec_label_pc_277ff

dec_label_pc_277ff:                               ; preds = %dec_label_pc_277d6
  %2 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_27824

dec_label_pc_27814:                               ; preds = %dec_label_pc_277d6
  call void @printLine(ptr @global_var_6adf8)
  br label %dec_label_pc_27824

dec_label_pc_27824:                               ; preds = %dec_label_pc_27814, %dec_label_pc_277ff
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_27827:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_45_goodB2GData, align 4
  call void @anon0()
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

