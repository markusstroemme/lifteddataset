@CWE190_Integer_Overflow__short_max_preinc_68_goodB2GData = external local_unnamed_addr global i16
@global_var_8a100 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_56f5b:
  store i16 32767, ptr @CWE190_Integer_Overflow__short_max_preinc_68_goodB2GData, align 2
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5701a:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_max_preinc_68_goodB2GData, align 2
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_57059, label %dec_label_pc_57039

dec_label_pc_57039:                               ; preds = %dec_label_pc_5701a
  %2 = add i16 %0, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_57068

dec_label_pc_57059:                               ; preds = %dec_label_pc_5701a
  call void @printLine(ptr @global_var_8a100)
  br label %dec_label_pc_57068

dec_label_pc_57068:                               ; preds = %dec_label_pc_57059, %dec_label_pc_57039
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

