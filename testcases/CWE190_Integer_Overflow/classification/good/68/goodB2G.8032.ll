@CWE190_Integer_Overflow__unsigned_int_max_multiply_68_goodB2GData = external local_unnamed_addr global i32
@global_var_6a6e0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_24cbe:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_24d6d:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_multiply_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_24db4, label %dec_label_pc_24d88

dec_label_pc_24d88:                               ; preds = %dec_label_pc_24d6d
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_24d91, label %dec_label_pc_24da5

dec_label_pc_24d91:                               ; preds = %dec_label_pc_24d88
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_24db4

dec_label_pc_24da5:                               ; preds = %dec_label_pc_24d88
  call void @printLine(ptr @global_var_6a6e0)
  br label %dec_label_pc_24db4

dec_label_pc_24db4:                               ; preds = %dec_label_pc_24da5, %dec_label_pc_24d91, %dec_label_pc_24d6d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

