@CWE190_Integer_Overflow__short_max_preinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_55273:
  store i32 1, ptr @CWE190_Integer_Overflow__short_max_preinc_22_badGlobal, align 4
  call void @anon1(i16 32767)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_5535c:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_max_preinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_55396, label %dec_label_pc_55378

dec_label_pc_55378:                               ; preds = %dec_label_pc_5535c
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_55396

dec_label_pc_55396:                               ; preds = %dec_label_pc_55378, %dec_label_pc_5535c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

