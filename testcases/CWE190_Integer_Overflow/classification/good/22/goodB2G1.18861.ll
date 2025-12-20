@CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_8b040 = external constant [21 x i8]
@global_var_8b058 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b036 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5f342:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b036)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodB2G1Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_5f3af, label %dec_label_pc_5f3aa

dec_label_pc_5f3aa:                               ; preds = %dec_label_pc_5f342
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f3af

dec_label_pc_5f3af:                               ; preds = %dec_label_pc_5f3aa, %dec_label_pc_5f342
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5f4aa:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5f4d4, label %dec_label_pc_5f4c3

dec_label_pc_5f4c3:                               ; preds = %dec_label_pc_5f4aa
  call void @printLine(ptr @global_var_8b040)
  br label %dec_label_pc_5f4ff

dec_label_pc_5f4d4:                               ; preds = %dec_label_pc_5f4aa
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_5f4f0, label %dec_label_pc_5f4da

dec_label_pc_5f4da:                               ; preds = %dec_label_pc_5f4d4
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_5f4ff

dec_label_pc_5f4f0:                               ; preds = %dec_label_pc_5f4d4
  call void @printLine(ptr @global_var_8b058)
  br label %dec_label_pc_5f4ff

dec_label_pc_5f4ff:                               ; preds = %dec_label_pc_5f4f0, %dec_label_pc_5f4da, %dec_label_pc_5f4c3
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

