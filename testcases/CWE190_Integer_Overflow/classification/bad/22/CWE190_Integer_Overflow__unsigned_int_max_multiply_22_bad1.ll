@CWE190_Integer_Overflow__unsigned_int_max_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_231cf:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_22_badGlobal, align 4
  call void @anon1(i32 -1)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_232bc:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_232ed, label %dec_label_pc_232db

dec_label_pc_232db:                               ; preds = %dec_label_pc_232bc
  %3 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_232ed

dec_label_pc_232ed:                               ; preds = %dec_label_pc_232db, %dec_label_pc_232bc
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

