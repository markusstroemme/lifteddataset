@CWE190_Integer_Overflow__int_fscanf_multiply_45_badData = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83810 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1ea8e:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_multiply_45_badData, align 4
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1eabb, label %dec_label_pc_1eaa9

dec_label_pc_1eaa9:                               ; preds = %dec_label_pc_1ea8e
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1eabb

dec_label_pc_1eabb:                               ; preds = %dec_label_pc_1eaa9, %dec_label_pc_1ea8e
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1eabe:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83810)
  store i32 0, ptr @CWE190_Integer_Overflow__int_fscanf_multiply_45_badData, align 4
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1eb2a, label %dec_label_pc_1eb25

dec_label_pc_1eb25:                               ; preds = %dec_label_pc_1eabe
  call void @__stack_chk_fail()
  br label %dec_label_pc_1eb2a

dec_label_pc_1eb2a:                               ; preds = %dec_label_pc_1eb25, %dec_label_pc_1eabe
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

