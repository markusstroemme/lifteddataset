@global_var_899d6 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_postinc_68_badData = external local_unnamed_addr global i16
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_52f15:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_899d6, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  store i16 %3, ptr @CWE190_Integer_Overflow__short_fscanf_postinc_68_badData, align 2
  call void @anon1()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_52f82, label %dec_label_pc_52f7d

dec_label_pc_52f7d:                               ; preds = %dec_label_pc_52f15
  call void @__stack_chk_fail()
  br label %dec_label_pc_52f82

dec_label_pc_52f82:                               ; preds = %dec_label_pc_52f7d, %dec_label_pc_52f15
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_53042:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_fscanf_postinc_68_badData, align 2
  %1 = add i16 %0, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

