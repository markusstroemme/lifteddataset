@CWE190_Integer_Overflow__unsigned_int_max_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_8ba60 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_63436:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_22_goodB2G2Global, align 4
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_63549:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6358d, label %dec_label_pc_63562

dec_label_pc_63562:                               ; preds = %dec_label_pc_63549
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_6357e, label %dec_label_pc_63568

dec_label_pc_63568:                               ; preds = %dec_label_pc_63562
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_6358d

dec_label_pc_6357e:                               ; preds = %dec_label_pc_63562
  call void @printLine(ptr @global_var_8ba60)
  br label %dec_label_pc_6358d

dec_label_pc_6358d:                               ; preds = %dec_label_pc_6357e, %dec_label_pc_63568, %dec_label_pc_63549
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

