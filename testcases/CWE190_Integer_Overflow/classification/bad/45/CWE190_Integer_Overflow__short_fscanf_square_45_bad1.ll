@CWE190_Integer_Overflow__short_fscanf_square_45_badData = external local_unnamed_addr global i16
@global_var_733e0 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_27b05:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_fscanf_square_45_badData, align 2
  %1 = mul i16 %0, %0
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_27b39:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_733e0, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  store i16 %3, ptr @CWE190_Integer_Overflow__short_fscanf_square_45_badData, align 2
  call void @anon1()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_27ba6, label %dec_label_pc_27ba1

dec_label_pc_27ba1:                               ; preds = %dec_label_pc_27b39
  call void @__stack_chk_fail()
  br label %dec_label_pc_27ba6

dec_label_pc_27ba6:                               ; preds = %dec_label_pc_27ba1, %dec_label_pc_27b39
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

