@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_68_goodB2GData = external local_unnamed_addr global i32
@global_var_68990 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68986 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_186fc:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68986)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_68_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_18768, label %dec_label_pc_18763

dec_label_pc_18763:                               ; preds = %dec_label_pc_186fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_18768

dec_label_pc_18768:                               ; preds = %dec_label_pc_18763, %dec_label_pc_186fc
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_187e9:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_18830, label %dec_label_pc_18804

dec_label_pc_18804:                               ; preds = %dec_label_pc_187e9
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_1880d, label %dec_label_pc_18821

dec_label_pc_1880d:                               ; preds = %dec_label_pc_18804
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_18830

dec_label_pc_18821:                               ; preds = %dec_label_pc_18804
  call void @printLine(ptr @global_var_68990)
  br label %dec_label_pc_18830

dec_label_pc_18830:                               ; preds = %dec_label_pc_18821, %dec_label_pc_1880d, %dec_label_pc_187e9
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

