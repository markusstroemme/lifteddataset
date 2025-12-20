@CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_67ab0 = external constant [21 x i8]
@global_var_67ac8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67aa6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1154b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67aa6)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G1Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_115b8, label %dec_label_pc_115b3

dec_label_pc_115b3:                               ; preds = %dec_label_pc_1154b
  call void @__stack_chk_fail()
  br label %dec_label_pc_115b8

dec_label_pc_115b8:                               ; preds = %dec_label_pc_115b3, %dec_label_pc_1154b
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_116b2:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_add_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_116dc, label %dec_label_pc_116cb

dec_label_pc_116cb:                               ; preds = %dec_label_pc_116b2
  call void @printLine(ptr @global_var_67ab0)
  br label %dec_label_pc_11706

dec_label_pc_116dc:                               ; preds = %dec_label_pc_116b2
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_116f7, label %dec_label_pc_116e2

dec_label_pc_116e2:                               ; preds = %dec_label_pc_116dc
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_11706

dec_label_pc_116f7:                               ; preds = %dec_label_pc_116dc
  call void @printLine(ptr @global_var_67ac8)
  br label %dec_label_pc_11706

dec_label_pc_11706:                               ; preds = %dec_label_pc_116f7, %dec_label_pc_116e2, %dec_label_pc_116cb
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

