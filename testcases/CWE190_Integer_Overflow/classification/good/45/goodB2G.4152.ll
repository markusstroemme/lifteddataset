@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodB2GData = external local_unnamed_addr global i32
@global_var_686d8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_686d0 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_171f0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodB2GData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_17237, label %dec_label_pc_1720b

dec_label_pc_1720b:                               ; preds = %dec_label_pc_171f0
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_17214, label %dec_label_pc_17228

dec_label_pc_17214:                               ; preds = %dec_label_pc_1720b
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_17237

dec_label_pc_17228:                               ; preds = %dec_label_pc_1720b
  call void @printLine(ptr @global_var_686d8)
  br label %dec_label_pc_17237

dec_label_pc_17237:                               ; preds = %dec_label_pc_17228, %dec_label_pc_17214, %dec_label_pc_171f0
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1723a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_686d0)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_172a6, label %dec_label_pc_172a1

dec_label_pc_172a1:                               ; preds = %dec_label_pc_1723a
  call void @__stack_chk_fail()
  br label %dec_label_pc_172a6

dec_label_pc_172a6:                               ; preds = %dec_label_pc_172a1, %dec_label_pc_1723a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

