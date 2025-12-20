@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_68500 = external constant [21 x i8]
@global_var_68518 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_684f6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_164dc:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_684f6)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G1Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_16549, label %dec_label_pc_16544

dec_label_pc_16544:                               ; preds = %dec_label_pc_164dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_16549

dec_label_pc_16549:                               ; preds = %dec_label_pc_16544, %dec_label_pc_164dc
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_16648:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16672, label %dec_label_pc_16661

dec_label_pc_16661:                               ; preds = %dec_label_pc_16648
  call void @printLine(ptr @global_var_68500)
  br label %dec_label_pc_166a4

dec_label_pc_16672:                               ; preds = %dec_label_pc_16648
  %2 = icmp eq i32 %data, 0
  br i1 %2, label %dec_label_pc_166a4, label %dec_label_pc_16678

dec_label_pc_16678:                               ; preds = %dec_label_pc_16672
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_16681, label %dec_label_pc_16695

dec_label_pc_16681:                               ; preds = %dec_label_pc_16678
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_166a4

dec_label_pc_16695:                               ; preds = %dec_label_pc_16678
  call void @printLine(ptr @global_var_68518)
  br label %dec_label_pc_166a4

dec_label_pc_166a4:                               ; preds = %dec_label_pc_16695, %dec_label_pc_16681, %dec_label_pc_16672, %dec_label_pc_16661
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

