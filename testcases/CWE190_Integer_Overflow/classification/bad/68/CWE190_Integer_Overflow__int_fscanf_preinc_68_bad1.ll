@CWE190_Integer_Overflow__int_fscanf_preinc_68_badData = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_87056 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3a592:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_87056)
  store i32 0, ptr @CWE190_Integer_Overflow__int_fscanf_preinc_68_badData, align 4
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3a5fe, label %dec_label_pc_3a5f9

dec_label_pc_3a5f9:                               ; preds = %dec_label_pc_3a592
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a5fe

dec_label_pc_3a5fe:                               ; preds = %dec_label_pc_3a5f9, %dec_label_pc_3a592
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3a6bd:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_preinc_68_badData, align 4
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

