@CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodB2GData = external local_unnamed_addr global i32
@global_var_8bbe8 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_63d83:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_63db4, label %dec_label_pc_63d9e

dec_label_pc_63d9e:                               ; preds = %dec_label_pc_63d83
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_63dc3

dec_label_pc_63db4:                               ; preds = %dec_label_pc_63d83
  call void @printLine(ptr @global_var_8bbe8)
  br label %dec_label_pc_63dc3

dec_label_pc_63dc3:                               ; preds = %dec_label_pc_63db4, %dec_label_pc_63d9e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_63dc6:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_45_goodB2GData, align 4
  call void @anon0()
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

