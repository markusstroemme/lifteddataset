@CWE190_Integer_Overflow__char_fscanf_preinc_45_goodB2GData = external local_unnamed_addr global i8
@global_var_81ba8 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81ba0 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_bae8:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_45_goodB2GData, align 1
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_bb22, label %dec_label_pc_bb04

dec_label_pc_bb04:                                ; preds = %dec_label_pc_bae8
  %2 = add i8 %0, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_bb31

dec_label_pc_bb22:                                ; preds = %dec_label_pc_bae8
  call void @printLine(ptr @global_var_81ba8)
  br label %dec_label_pc_bb31

dec_label_pc_bb31:                                ; preds = %dec_label_pc_bb22, %dec_label_pc_bb04
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_bb34:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81ba0)
  store i8 32, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_45_goodB2GData, align 1
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_bb9e, label %dec_label_pc_bb99

dec_label_pc_bb99:                                ; preds = %dec_label_pc_bb34
  call void @__stack_chk_fail()
  br label %dec_label_pc_bb9e

dec_label_pc_bb9e:                                ; preds = %dec_label_pc_bb99, %dec_label_pc_bb34
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

