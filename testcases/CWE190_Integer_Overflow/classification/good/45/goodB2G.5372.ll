@CWE190_Integer_Overflow__unsigned_int_fscanf_square_45_goodB2GData = external local_unnamed_addr global i32
@global_var_69128 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_69120 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1c2f0:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_45_goodB2GData, align 4
  %.off = add i32 %0, 65534
  %1 = icmp ugt i32 %.off, 131068
  br i1 %1, label %dec_label_pc_1c32e, label %dec_label_pc_1c319

dec_label_pc_1c319:                               ; preds = %dec_label_pc_1c2f0
  %2 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1c33e

dec_label_pc_1c32e:                               ; preds = %dec_label_pc_1c2f0
  call void @printLine(ptr @global_var_69128)
  br label %dec_label_pc_1c33e

dec_label_pc_1c33e:                               ; preds = %dec_label_pc_1c32e, %dec_label_pc_1c319
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1c341:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_69120)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_45_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1c3ad, label %dec_label_pc_1c3a8

dec_label_pc_1c3a8:                               ; preds = %dec_label_pc_1c341
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c3ad

dec_label_pc_1c3ad:                               ; preds = %dec_label_pc_1c3a8, %dec_label_pc_1c341
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

