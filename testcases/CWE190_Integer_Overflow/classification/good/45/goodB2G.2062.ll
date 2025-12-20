@CWE190_Integer_Overflow__char_max_preinc_45_goodB2GData = external local_unnamed_addr global i8
@global_var_82578 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_faf9:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_max_preinc_45_goodB2GData, align 1
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_fb33, label %dec_label_pc_fb15

dec_label_pc_fb15:                                ; preds = %dec_label_pc_faf9
  %2 = add i8 %0, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_fb42

dec_label_pc_fb33:                                ; preds = %dec_label_pc_faf9
  call void @printLine(ptr @global_var_82578)
  br label %dec_label_pc_fb42

dec_label_pc_fb42:                                ; preds = %dec_label_pc_fb33, %dec_label_pc_fb15
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_fb45:
  store i8 127, ptr @CWE190_Integer_Overflow__char_max_preinc_45_goodB2GData, align 1
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

