@CWE190_Integer_Overflow__char_fscanf_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81c26 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_ad25:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81c26)
  store i32 1, ptr @CWE190_Integer_Overflow__char_fscanf_postinc_22_badGlobal, align 4
  call void @anon1(i8 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_ad93, label %dec_label_pc_ad8e

dec_label_pc_ad8e:                                ; preds = %dec_label_pc_ad25
  call void @__stack_chk_fail()
  br label %dec_label_pc_ad93

dec_label_pc_ad93:                                ; preds = %dec_label_pc_ad8e, %dec_label_pc_ad25
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_aeca:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_fscanf_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_af01, label %dec_label_pc_aee5

dec_label_pc_aee5:                                ; preds = %dec_label_pc_aeca
  %2 = add i8 %data, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_af01

dec_label_pc_af01:                                ; preds = %dec_label_pc_aee5, %dec_label_pc_aeca
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

