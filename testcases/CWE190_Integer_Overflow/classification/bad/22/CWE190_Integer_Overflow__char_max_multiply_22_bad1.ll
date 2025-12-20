@CWE190_Integer_Overflow__char_max_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1e281:
  store i32 1, ptr @CWE190_Integer_Overflow__char_max_multiply_22_badGlobal, align 4
  call void @anon1(i8 127)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1e35a:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_max_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i8 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_1e38f, label %dec_label_pc_1e37b

dec_label_pc_1e37b:                               ; preds = %dec_label_pc_1e35a
  %3 = mul i8 %data, 2
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_1e38f

dec_label_pc_1e38f:                               ; preds = %dec_label_pc_1e37b, %dec_label_pc_1e35a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

