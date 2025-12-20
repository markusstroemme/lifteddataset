@CWE190_Integer_Overflow__char_fscanf_preinc_68_goodB2GData = external local_unnamed_addr global i8
@global_var_81e60 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81e56 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d074:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81e56)
  store i8 32, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_68_goodB2GData, align 1
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_d0de, label %dec_label_pc_d0d9

dec_label_pc_d0d9:                                ; preds = %dec_label_pc_d074
  call void @__stack_chk_fail()
  br label %dec_label_pc_d0de

dec_label_pc_d0de:                                ; preds = %dec_label_pc_d0d9, %dec_label_pc_d074
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_d169:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_68_goodB2GData, align 1
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_d1a3, label %dec_label_pc_d185

dec_label_pc_d185:                                ; preds = %dec_label_pc_d169
  %2 = add i8 %0, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_d1b2

dec_label_pc_d1a3:                                ; preds = %dec_label_pc_d169
  call void @printLine(ptr @global_var_81e60)
  br label %dec_label_pc_d1b2

dec_label_pc_d1b2:                                ; preds = %dec_label_pc_d1a3, %dec_label_pc_d185
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

