@CWE190_Integer_Overflow__char_max_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_823d8 = external constant [21 x i8]
@global_var_823f0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_f103:
  store i32 0, ptr @CWE190_Integer_Overflow__char_max_preinc_22_goodB2G1Global, align 4
  call void @anon0(i8 127)
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_f1ea:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_max_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_f216, label %dec_label_pc_f205

dec_label_pc_f205:                                ; preds = %dec_label_pc_f1ea
  call void @printLine(ptr @global_var_823d8)
  br label %dec_label_pc_f249

dec_label_pc_f216:                                ; preds = %dec_label_pc_f1ea
  %2 = icmp eq i8 %data, 127
  br i1 %2, label %dec_label_pc_f23a, label %dec_label_pc_f21c

dec_label_pc_f21c:                                ; preds = %dec_label_pc_f216
  %3 = add i8 %data, 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_f249

dec_label_pc_f23a:                                ; preds = %dec_label_pc_f216
  call void @printLine(ptr @global_var_823f0)
  br label %dec_label_pc_f249

dec_label_pc_f249:                                ; preds = %dec_label_pc_f23a, %dec_label_pc_f21c, %dec_label_pc_f205
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

