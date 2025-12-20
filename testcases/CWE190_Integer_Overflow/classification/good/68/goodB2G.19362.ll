@CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_68_goodB2GData = external local_unnamed_addr global i32
@global_var_8b4d0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b4c6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_6144d:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b4c6)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_68_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_614b9, label %dec_label_pc_614b4

dec_label_pc_614b4:                               ; preds = %dec_label_pc_6144d
  call void @__stack_chk_fail()
  br label %dec_label_pc_614b9

dec_label_pc_614b9:                               ; preds = %dec_label_pc_614b4, %dec_label_pc_6144d
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_61532:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_preinc_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_61563, label %dec_label_pc_6154d

dec_label_pc_6154d:                               ; preds = %dec_label_pc_61532
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_61572

dec_label_pc_61563:                               ; preds = %dec_label_pc_61532
  call void @printLine(ptr @global_var_8b4d0)
  br label %dec_label_pc_61572

dec_label_pc_61572:                               ; preds = %dec_label_pc_61563, %dec_label_pc_6154d
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

