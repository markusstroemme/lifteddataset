@global_var_72940 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_multiply_45_goodB2GData = external local_unnamed_addr global i16
@global_var_72948 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_22791:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_fscanf_multiply_45_goodB2GData, align 2
  %1 = icmp slt i16 %0, 1
  br i1 %1, label %dec_label_pc_227dd, label %dec_label_pc_227af

dec_label_pc_227af:                               ; preds = %dec_label_pc_22791
  %2 = icmp sgt i16 %0, 16382
  br i1 %2, label %dec_label_pc_227ce, label %dec_label_pc_227b7

dec_label_pc_227b7:                               ; preds = %dec_label_pc_227af
  %3 = mul i16 %0, 2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_227dd

dec_label_pc_227ce:                               ; preds = %dec_label_pc_227af
  call void @printLine(ptr @global_var_72948)
  br label %dec_label_pc_227dd

dec_label_pc_227dd:                               ; preds = %dec_label_pc_227ce, %dec_label_pc_227b7, %dec_label_pc_22791
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_227e0:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72940, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  store i16 %3, ptr @CWE190_Integer_Overflow__short_fscanf_multiply_45_goodB2GData, align 2
  call void @anon0()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2284d, label %dec_label_pc_22848

dec_label_pc_22848:                               ; preds = %dec_label_pc_227e0
  call void @__stack_chk_fail()
  br label %dec_label_pc_2284d

dec_label_pc_2284d:                               ; preds = %dec_label_pc_22848, %dec_label_pc_227e0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

