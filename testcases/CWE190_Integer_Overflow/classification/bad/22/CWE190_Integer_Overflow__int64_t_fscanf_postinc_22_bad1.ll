@global_var_839c6 = external constant [4 x i8]
@CWE190_Integer_Overflow__int64_t_fscanf_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_188b4:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_839c6, ptr nonnull %stack_var_-24)
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_fscanf_postinc_22_badGlobal, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon1(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_18924, label %dec_label_pc_1891f

dec_label_pc_1891f:                               ; preds = %dec_label_pc_188b4
  call void @__stack_chk_fail()
  br label %dec_label_pc_18924

dec_label_pc_18924:                               ; preds = %dec_label_pc_1891f, %dec_label_pc_188b4
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_18a68:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_fscanf_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_18a9b, label %dec_label_pc_18a82

dec_label_pc_18a82:                               ; preds = %dec_label_pc_18a68
  %2 = add i64 %data, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_18a9b

dec_label_pc_18a9b:                               ; preds = %dec_label_pc_18a82, %dec_label_pc_18a68
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

