@CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_badData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67c80 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_120db:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_badData, align 4
  %1 = add i32 %0, 1
  call void @printUnsignedLine(i32 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_12106:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67c80)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_badData, align 4
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_12172, label %dec_label_pc_1216d

dec_label_pc_1216d:                               ; preds = %dec_label_pc_12106
  call void @__stack_chk_fail()
  br label %dec_label_pc_12172

dec_label_pc_12172:                               ; preds = %dec_label_pc_1216d, %dec_label_pc_12106
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

