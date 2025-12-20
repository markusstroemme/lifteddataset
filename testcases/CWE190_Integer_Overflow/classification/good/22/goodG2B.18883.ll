@CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5f420:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodG2BGlobal, align 4
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5f549:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5f576, label %dec_label_pc_5f562

dec_label_pc_5f562:                               ; preds = %dec_label_pc_5f549
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_5f576

dec_label_pc_5f576:                               ; preds = %dec_label_pc_5f562, %dec_label_pc_5f549
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

