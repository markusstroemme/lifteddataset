@CWE190_Integer_Overflow__short_rand_square_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_c3ad:
  store i32 1, ptr @CWE190_Integer_Overflow__short_rand_square_22_goodG2BGlobal, align 4
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_c508:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_rand_square_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_c53e, label %dec_label_pc_c524

dec_label_pc_c524:                                ; preds = %dec_label_pc_c508
  %2 = mul i16 %data, %data
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_c53e

dec_label_pc_c53e:                                ; preds = %dec_label_pc_c524, %dec_label_pc_c508
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

