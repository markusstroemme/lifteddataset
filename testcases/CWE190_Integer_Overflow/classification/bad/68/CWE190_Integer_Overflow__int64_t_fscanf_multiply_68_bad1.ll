@global_var_72896 = external constant [4 x i8]
@CWE190_Integer_Overflow__int64_t_fscanf_multiply_68_badData = external local_unnamed_addr global i64
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3c164:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72896, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  store i64 %3, ptr @CWE190_Integer_Overflow__int64_t_fscanf_multiply_68_badData, align 8
  call void @anon1()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3c1d3, label %dec_label_pc_3c1ce

dec_label_pc_3c1ce:                               ; preds = %dec_label_pc_3c164
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c1d3

dec_label_pc_3c1d3:                               ; preds = %dec_label_pc_3c1ce, %dec_label_pc_3c164
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3c299:
  %0 = load i64, ptr @CWE190_Integer_Overflow__int64_t_fscanf_multiply_68_badData, align 8
  %1 = icmp slt i64 %0, 1
  br i1 %1, label %dec_label_pc_3c2ce, label %dec_label_pc_3c2b7

dec_label_pc_3c2b7:                               ; preds = %dec_label_pc_3c299
  %2 = mul i64 %0, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_3c2ce

dec_label_pc_3c2ce:                               ; preds = %dec_label_pc_3c2b7, %dec_label_pc_3c299
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

