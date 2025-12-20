@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_badData = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_686d0 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_170f2:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_badData, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1711f, label %dec_label_pc_1710d

dec_label_pc_1710d:                               ; preds = %dec_label_pc_170f2
  %2 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1711f

dec_label_pc_1711f:                               ; preds = %dec_label_pc_1710d, %dec_label_pc_170f2
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_17122:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_686d0)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_45_badData, align 4
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1718e, label %dec_label_pc_17189

dec_label_pc_17189:                               ; preds = %dec_label_pc_17122
  call void @__stack_chk_fail()
  br label %dec_label_pc_1718e

dec_label_pc_1718e:                               ; preds = %dec_label_pc_17189, %dec_label_pc_17122
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

