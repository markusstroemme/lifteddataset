@CWE190_Integer_Overflow__int_fscanf_add_22_badGlobal = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_82be6 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_18e3c:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_82be6)
  store i32 1, ptr @CWE190_Integer_Overflow__int_fscanf_add_22_badGlobal, align 4
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_18ea9, label %dec_label_pc_18ea4

dec_label_pc_18ea4:                               ; preds = %dec_label_pc_18e3c
  call void @__stack_chk_fail()
  br label %dec_label_pc_18ea9

dec_label_pc_18ea9:                               ; preds = %dec_label_pc_18ea4, %dec_label_pc_18e3c
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_18fe3:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_add_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1900f, label %dec_label_pc_18ffc

dec_label_pc_18ffc:                               ; preds = %dec_label_pc_18fe3
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1900f

dec_label_pc_1900f:                               ; preds = %dec_label_pc_18ffc, %dec_label_pc_18fe3
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

