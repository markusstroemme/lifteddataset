@CWE190_Integer_Overflow__unsigned_int_max_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_633d4:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_max_postinc_22_badGlobal, align 4
  call void @anon1(i32 -1)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_634c1:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_634ee, label %dec_label_pc_634da

dec_label_pc_634da:                               ; preds = %dec_label_pc_634c1
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_634ee

dec_label_pc_634ee:                               ; preds = %dec_label_pc_634da, %dec_label_pc_634c1
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

