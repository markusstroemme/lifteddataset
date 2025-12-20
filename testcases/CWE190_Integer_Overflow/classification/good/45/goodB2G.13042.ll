@CWE190_Integer_Overflow__int_max_preinc_45_goodB2GData = external local_unnamed_addr global i32
@global_var_880f8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_477ca:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_max_preinc_45_goodB2GData, align 4
  %1 = icmp eq i32 %0, 2147483647
  br i1 %1, label %dec_label_pc_477fe, label %dec_label_pc_477e8

dec_label_pc_477e8:                               ; preds = %dec_label_pc_477ca
  %2 = add i32 %0, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4780d

dec_label_pc_477fe:                               ; preds = %dec_label_pc_477ca
  call void @printLine(ptr @global_var_880f8)
  br label %dec_label_pc_4780d

dec_label_pc_4780d:                               ; preds = %dec_label_pc_477fe, %dec_label_pc_477e8
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_47810:
  store i32 2147483647, ptr @CWE190_Integer_Overflow__int_max_preinc_45_goodB2GData, align 4
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

