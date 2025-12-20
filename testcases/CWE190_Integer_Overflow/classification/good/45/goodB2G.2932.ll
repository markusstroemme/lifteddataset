@CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_goodB2GData = external local_unnamed_addr global i32
@global_var_67c88 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67c80 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_121cf:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_121ff, label %dec_label_pc_121ea

dec_label_pc_121ea:                               ; preds = %dec_label_pc_121cf
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1220e

dec_label_pc_121ff:                               ; preds = %dec_label_pc_121cf
  call void @printLine(ptr @global_var_67c88)
  br label %dec_label_pc_1220e

dec_label_pc_1220e:                               ; preds = %dec_label_pc_121ff, %dec_label_pc_121ea
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_12211:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67c80)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_45_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1227d, label %dec_label_pc_12278

dec_label_pc_12278:                               ; preds = %dec_label_pc_12211
  call void @__stack_chk_fail()
  br label %dec_label_pc_1227d

dec_label_pc_1227d:                               ; preds = %dec_label_pc_12278, %dec_label_pc_12211
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

