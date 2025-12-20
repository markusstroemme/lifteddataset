@CWE190_Integer_Overflow__char_fscanf_multiply_45_badData = external local_unnamed_addr global i8
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_6cd50 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_122d9:
  %0 = load i8, ptr @CWE190_Integer_Overflow__char_fscanf_multiply_45_badData, align 1
  %1 = icmp slt i8 %0, 1
  br i1 %1, label %dec_label_pc_12309, label %dec_label_pc_122f5

dec_label_pc_122f5:                               ; preds = %dec_label_pc_122d9
  %2 = mul i8 %0, 2
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_12309

dec_label_pc_12309:                               ; preds = %dec_label_pc_122f5, %dec_label_pc_122d9
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1230c:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6cd50)
  store i8 32, ptr @CWE190_Integer_Overflow__char_fscanf_multiply_45_badData, align 1
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_12376, label %dec_label_pc_12371

dec_label_pc_12371:                               ; preds = %dec_label_pc_1230c
  call void @__stack_chk_fail()
  br label %dec_label_pc_12376

dec_label_pc_12376:                               ; preds = %dec_label_pc_12371, %dec_label_pc_1230c
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

