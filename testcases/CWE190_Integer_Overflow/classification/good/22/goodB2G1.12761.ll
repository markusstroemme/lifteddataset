@CWE190_Integer_Overflow__int_max_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_87f58 = external constant [21 x i8]
@global_var_87f70 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_46e34:
  store i32 0, ptr @CWE190_Integer_Overflow__int_max_preinc_22_goodB2G1Global, align 4
  call void @anon0(i32 2147483647)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_46f20:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_max_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_46f4a, label %dec_label_pc_46f39

dec_label_pc_46f39:                               ; preds = %dec_label_pc_46f20
  call void @printLine(ptr @global_var_87f58)
  br label %dec_label_pc_46f78

dec_label_pc_46f4a:                               ; preds = %dec_label_pc_46f20
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_46f69, label %dec_label_pc_46f53

dec_label_pc_46f53:                               ; preds = %dec_label_pc_46f4a
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_46f78

dec_label_pc_46f69:                               ; preds = %dec_label_pc_46f4a
  call void @printLine(ptr @global_var_87f70)
  br label %dec_label_pc_46f78

dec_label_pc_46f78:                               ; preds = %dec_label_pc_46f69, %dec_label_pc_46f53, %dec_label_pc_46f39
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

