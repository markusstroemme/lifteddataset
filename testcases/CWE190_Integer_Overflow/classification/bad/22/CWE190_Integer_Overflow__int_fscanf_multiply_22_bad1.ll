@CWE190_Integer_Overflow__int_fscanf_multiply_22_badGlobal = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83636 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1de09:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83636)
  store i32 1, ptr @CWE190_Integer_Overflow__int_fscanf_multiply_22_badGlobal, align 4
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1de76, label %dec_label_pc_1de71

dec_label_pc_1de71:                               ; preds = %dec_label_pc_1de09
  call void @__stack_chk_fail()
  br label %dec_label_pc_1de76

dec_label_pc_1de76:                               ; preds = %dec_label_pc_1de71, %dec_label_pc_1de09
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1dfb0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_multiply_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_1dfe1, label %dec_label_pc_1dfcf

dec_label_pc_1dfcf:                               ; preds = %dec_label_pc_1dfb0
  %3 = mul i32 %data, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1dfe1

dec_label_pc_1dfe1:                               ; preds = %dec_label_pc_1dfcf, %dec_label_pc_1dfb0
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

