@CWE190_Integer_Overflow__char_max_multiply_45_badData = external local_unnamed_addr global i8
@global_var_76cf3 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1ebb7:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_max_multiply_45_badData, align 1
  %1 = icmp slt i8 %0, 1
  br i1 %1, label %dec_label_pc_1ebe7, label %dec_label_pc_1ebd3

dec_label_pc_1ebd3:                               ; preds = %dec_label_pc_1ebb7
  %2 = mul i8 %0, 2
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_1ebe7

dec_label_pc_1ebe7:                               ; preds = %dec_label_pc_1ebd3, %dec_label_pc_1ebb7
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1ebea:
  store i8 127, ptr @CWE190_Integer_Overflow__char_max_multiply_45_badData, align 1
  call void @anon1()
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

