@CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_badGlobal = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68f46 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1b588:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68f46)
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_badGlobal, align 4
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1b5f5, label %dec_label_pc_1b5f0

dec_label_pc_1b5f0:                               ; preds = %dec_label_pc_1b588
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b5f5

dec_label_pc_1b5f5:                               ; preds = %dec_label_pc_1b5f0, %dec_label_pc_1b588
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1b72f:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b75b, label %dec_label_pc_1b748

dec_label_pc_1b748:                               ; preds = %dec_label_pc_1b72f
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1b75b

dec_label_pc_1b75b:                               ; preds = %dec_label_pc_1b748, %dec_label_pc_1b72f
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

