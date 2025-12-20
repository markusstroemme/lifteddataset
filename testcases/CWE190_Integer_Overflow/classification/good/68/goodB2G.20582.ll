@CWE190_Integer_Overflow__unsigned_int_max_preinc_68_goodB2GData = external local_unnamed_addr global i32
@global_var_8be50 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_64dae:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_64e55:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_64e86, label %dec_label_pc_64e70

dec_label_pc_64e70:                               ; preds = %dec_label_pc_64e55
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_64e95

dec_label_pc_64e86:                               ; preds = %dec_label_pc_64e55
  call void @printLine(ptr @global_var_8be50)
  br label %dec_label_pc_64e95

dec_label_pc_64e95:                               ; preds = %dec_label_pc_64e86, %dec_label_pc_64e70
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

