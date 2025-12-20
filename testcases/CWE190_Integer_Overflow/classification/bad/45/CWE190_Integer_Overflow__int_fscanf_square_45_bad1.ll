@CWE190_Integer_Overflow__int_fscanf_square_45_badData = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_84260 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_23d28:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_square_45_badData, align 4
  %1 = mul i32 %0, %0
  call void @printIntLine(i32 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_23d53:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_84260)
  store i32 0, ptr @CWE190_Integer_Overflow__int_fscanf_square_45_badData, align 4
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_23dbf, label %dec_label_pc_23dba

dec_label_pc_23dba:                               ; preds = %dec_label_pc_23d53
  call void @__stack_chk_fail()
  br label %dec_label_pc_23dbf

dec_label_pc_23dbf:                               ; preds = %dec_label_pc_23dba, %dec_label_pc_23d53
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

