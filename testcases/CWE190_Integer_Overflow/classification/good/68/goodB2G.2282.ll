@CWE190_Integer_Overflow__char_max_preinc_68_goodB2GData = external local_unnamed_addr global i8
@global_var_827e0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_10be1:
  store i8 127, ptr @CWE190_Integer_Overflow__char_max_preinc_68_goodB2GData, align 1
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10c95:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_max_preinc_68_goodB2GData, align 1
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_10ccf, label %dec_label_pc_10cb1

dec_label_pc_10cb1:                               ; preds = %dec_label_pc_10c95
  %2 = add i8 %0, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_10cde

dec_label_pc_10ccf:                               ; preds = %dec_label_pc_10c95
  call void @printLine(ptr @global_var_827e0)
  br label %dec_label_pc_10cde

dec_label_pc_10cde:                               ; preds = %dec_label_pc_10ccf, %dec_label_pc_10cb1
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

