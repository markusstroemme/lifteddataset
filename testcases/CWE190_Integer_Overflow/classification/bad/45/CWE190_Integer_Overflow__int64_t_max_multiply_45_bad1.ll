@CWE190_Integer_Overflow__int64_t_max_multiply_45_badData = external local_unnamed_addr global i64
@global_var_95449 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_166f0:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_max_multiply_45_badData, align 8
  %1 = icmp slt i64 %0, 1
  br i1 %1, label %dec_label_pc_16725, label %dec_label_pc_1670e

dec_label_pc_1670e:                               ; preds = %dec_label_pc_166f0
  %2 = mul i64 %0, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_16725

dec_label_pc_16725:                               ; preds = %dec_label_pc_1670e, %dec_label_pc_166f0
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16728:
  store i64 9223372036854775807, ptr @CWE190_Integer_Overflow__int64_t_max_multiply_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

