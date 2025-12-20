@CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_67ac8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67aa6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_115ba:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67aa6)
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G2Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_11627, label %dec_label_pc_11622

dec_label_pc_11622:                               ; preds = %dec_label_pc_115ba
  call void @__stack_chk_fail()
  br label %dec_label_pc_11627

dec_label_pc_11627:                               ; preds = %dec_label_pc_11622, %dec_label_pc_115ba
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11709:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1174c, label %dec_label_pc_11722

dec_label_pc_11722:                               ; preds = %dec_label_pc_11709
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_1173d, label %dec_label_pc_11728

dec_label_pc_11728:                               ; preds = %dec_label_pc_11722
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1174c

dec_label_pc_1173d:                               ; preds = %dec_label_pc_11722
  call void @printLine(ptr @global_var_67ac8)
  br label %dec_label_pc_1174c

dec_label_pc_1174c:                               ; preds = %dec_label_pc_1173d, %dec_label_pc_11728, %dec_label_pc_11709
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

