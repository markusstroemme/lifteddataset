@CWE190_Integer_Overflow__char_max_add_22_badGlobal = external local_unnamed_addr global i32
@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1a999:
  store i32 1, ptr @CWE190_Integer_Overflow__char_max_add_22_badGlobal, align 4
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1aa72:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_max_add_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1aaa2, label %dec_label_pc_1aa8d

dec_label_pc_1aa8d:                               ; preds = %dec_label_pc_1aa72
  %2 = add i8 %data, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_1aaa2

dec_label_pc_1aaa2:                               ; preds = %dec_label_pc_1aa8d, %dec_label_pc_1aa72
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

