@CWE190_Integer_Overflow__int64_t_max_square_22_badGlobal = external local_unnamed_addr global i32
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1a0da:
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_max_square_22_badGlobal, align 4
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_1a1e9:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_max_square_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1a21b, label %dec_label_pc_1a203

dec_label_pc_1a203:                               ; preds = %dec_label_pc_1a1e9
  %2 = mul i64 %data, %data
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1a21b

dec_label_pc_1a21b:                               ; preds = %dec_label_pc_1a203, %dec_label_pc_1a1e9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

