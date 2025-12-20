@CWE190_Integer_Overflow__int_max_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_46e03:
  store i32 1, ptr @CWE190_Integer_Overflow__int_max_postinc_22_badGlobal, align 4
  call void @anon1(i32 2147483647)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_46ef0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_max_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_46f1d, label %dec_label_pc_46f09

dec_label_pc_46f09:                               ; preds = %dec_label_pc_46ef0
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_46f1d

dec_label_pc_46f1d:                               ; preds = %dec_label_pc_46f09, %dec_label_pc_46ef0
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

