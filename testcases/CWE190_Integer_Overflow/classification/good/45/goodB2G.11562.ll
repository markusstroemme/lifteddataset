@CWE190_Integer_Overflow__short_max_square_45_goodB2GData = external local_unnamed_addr global i16
@global_var_750b8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3391f:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_max_square_45_goodB2GData, align 2
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_33948, label %dec_label_pc_33964

dec_label_pc_33948:                               ; preds = %dec_label_pc_3391f
  %5 = mul i16 %0, %0
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_33973

dec_label_pc_33964:                               ; preds = %dec_label_pc_3391f
  call void @printLine(ptr @global_var_750b8)
  br label %dec_label_pc_33973

dec_label_pc_33973:                               ; preds = %dec_label_pc_33964, %dec_label_pc_33948
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_33976:
  store i16 32767, ptr @CWE190_Integer_Overflow__short_max_square_45_goodB2GData, align 2
  call void @anon0()
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

declare i32 @puts(ptr) local_unnamed_addr

