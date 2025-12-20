@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_684f6 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1646d:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_684f6)
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_badGlobal, align 4
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_164da, label %dec_label_pc_164d5

dec_label_pc_164d5:                               ; preds = %dec_label_pc_1646d
  call void @__stack_chk_fail()
  br label %dec_label_pc_164da

dec_label_pc_164da:                               ; preds = %dec_label_pc_164d5, %dec_label_pc_1646d
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_16614:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_16645, label %dec_label_pc_16633

dec_label_pc_16633:                               ; preds = %dec_label_pc_16614
  %3 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_16645

dec_label_pc_16645:                               ; preds = %dec_label_pc_16633, %dec_label_pc_16614
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

