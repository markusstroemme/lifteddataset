@CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b6d5:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodG2BGlobal, align 4
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1b819:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b845, label %dec_label_pc_1b832

dec_label_pc_1b832:                               ; preds = %dec_label_pc_1b819
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1b845

dec_label_pc_1b845:                               ; preds = %dec_label_pc_1b832, %dec_label_pc_1b819
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

