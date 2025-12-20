@CWE190_Integer_Overflow__unsigned_int_fscanf_add_68_goodB2GData = external local_unnamed_addr global i32
@global_var_67f40 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67f36 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1361f:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67f36)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_68_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1368b, label %dec_label_pc_13686

dec_label_pc_13686:                               ; preds = %dec_label_pc_1361f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1368b

dec_label_pc_1368b:                               ; preds = %dec_label_pc_13686, %dec_label_pc_1361f
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13702:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_13732, label %dec_label_pc_1371d

dec_label_pc_1371d:                               ; preds = %dec_label_pc_13702
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_13741

dec_label_pc_13732:                               ; preds = %dec_label_pc_13702
  call void @printLine(ptr @global_var_67f40)
  br label %dec_label_pc_13741

dec_label_pc_13741:                               ; preds = %dec_label_pc_13732, %dec_label_pc_1371d
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

