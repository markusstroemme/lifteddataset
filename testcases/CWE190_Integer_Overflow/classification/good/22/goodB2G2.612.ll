@CWE190_Integer_Overflow__char_fscanf_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_819e8 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_819c6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_ae05:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_819c6)
  store i32 1, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_22_goodB2G2Global, align 4
  call void @anon0(i8 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_ae73, label %dec_label_pc_ae6e

dec_label_pc_ae6e:                                ; preds = %dec_label_pc_ae05
  call void @__stack_chk_fail()
  br label %dec_label_pc_ae73

dec_label_pc_ae73:                                ; preds = %dec_label_pc_ae6e, %dec_label_pc_ae05
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_af66:
  %0 = load i32, ptr @CWE190_Integer_Overflow__char_fscanf_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_afb4, label %dec_label_pc_af81

dec_label_pc_af81:                                ; preds = %dec_label_pc_af66
  %2 = icmp eq i8 %data, 127
  br i1 %2, label %dec_label_pc_afa5, label %dec_label_pc_af87

dec_label_pc_af87:                                ; preds = %dec_label_pc_af81
  %3 = add i8 %data, 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_afb4

dec_label_pc_afa5:                                ; preds = %dec_label_pc_af81
  call void @printLine(ptr @global_var_819e8)
  br label %dec_label_pc_afb4

dec_label_pc_afb4:                                ; preds = %dec_label_pc_afa5, %dec_label_pc_af87, %dec_label_pc_af66
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

