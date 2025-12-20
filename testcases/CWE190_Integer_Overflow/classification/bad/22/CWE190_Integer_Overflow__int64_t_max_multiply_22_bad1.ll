@CWE190_Integer_Overflow__int64_t_max_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15bf0:
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_max_multiply_22_badGlobal, align 4
  call void @anon1(i64 9223372036854775807)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_15cff:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_max_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i64 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_15d37, label %dec_label_pc_15d20

dec_label_pc_15d20:                               ; preds = %dec_label_pc_15cff
  %3 = mul i64 %data, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_15d37

dec_label_pc_15d37:                               ; preds = %dec_label_pc_15d20, %dec_label_pc_15cff
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

