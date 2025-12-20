@CWE190_Integer_Overflow__unsigned_int_fscanf_postinc_22_badGlobal = external local_unnamed_addr global i32
@global_var_8ca9e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b296 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f2d3:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b296)
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_postinc_22_badGlobal, align 4
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_5f340, label %dec_label_pc_5f33b

dec_label_pc_5f33b:                               ; preds = %dec_label_pc_5f2d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f340

dec_label_pc_5f340:                               ; preds = %dec_label_pc_5f33b, %dec_label_pc_5f2d3
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_5f47a:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_postinc_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5f4a7, label %dec_label_pc_5f493

dec_label_pc_5f493:                               ; preds = %dec_label_pc_5f47a
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_5f4a7

dec_label_pc_5f4a7:                               ; preds = %dec_label_pc_5f493, %dec_label_pc_5f47a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

