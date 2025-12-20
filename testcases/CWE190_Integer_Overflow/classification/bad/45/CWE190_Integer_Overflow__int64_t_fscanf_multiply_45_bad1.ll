@CWE190_Integer_Overflow__int64_t_fscanf_multiply_45_badData = external local_unnamed_addr global i64
@global_var_725e0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_3aa0e:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_fscanf_multiply_45_badData, align 8
  %1 = icmp slt i64 %0, 1
  br i1 %1, label %dec_label_pc_3aa43, label %dec_label_pc_3aa2c

dec_label_pc_3aa2c:                               ; preds = %dec_label_pc_3aa0e
  %2 = mul i64 %0, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_3aa43

dec_label_pc_3aa43:                               ; preds = %dec_label_pc_3aa2c, %dec_label_pc_3aa0e
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3aa46:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_725e0, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  store i64 %3, ptr @CWE190_Integer_Overflow__int64_t_fscanf_multiply_45_badData, align 8
  call void @anon1()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3aab5, label %dec_label_pc_3aab0

dec_label_pc_3aab0:                               ; preds = %dec_label_pc_3aa46
  call void @__stack_chk_fail()
  br label %dec_label_pc_3aab5

dec_label_pc_3aab5:                               ; preds = %dec_label_pc_3aab0, %dec_label_pc_3aa46
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

