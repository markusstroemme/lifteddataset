@CWE190_Integer_Overflow__short_rand_preinc_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5a02e:
  store i32 1, ptr @CWE190_Integer_Overflow__short_rand_preinc_22_goodG2BGlobal, align 4
  call void @anon0(i16 2)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_5a181:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_rand_preinc_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5a1bb, label %dec_label_pc_5a19d

dec_label_pc_5a19d:                               ; preds = %dec_label_pc_5a181
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_5a1bb

dec_label_pc_5a1bb:                               ; preds = %dec_label_pc_5a19d, %dec_label_pc_5a181
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

