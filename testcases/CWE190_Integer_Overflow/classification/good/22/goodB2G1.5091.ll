@CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_68f50 = external constant [21 x i8]
@global_var_68f68 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68f46 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b5f7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68f46)
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodB2G1Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1b664, label %dec_label_pc_1b65f

dec_label_pc_1b65f:                               ; preds = %dec_label_pc_1b5f7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b664

dec_label_pc_1b664:                               ; preds = %dec_label_pc_1b65f, %dec_label_pc_1b5f7
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1b75e:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_square_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b788, label %dec_label_pc_1b777

dec_label_pc_1b777:                               ; preds = %dec_label_pc_1b75e
  call void @printLine(ptr @global_var_68f50)
  br label %dec_label_pc_1b7c1

dec_label_pc_1b788:                               ; preds = %dec_label_pc_1b75e
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_1b7b2, label %dec_label_pc_1b79c

dec_label_pc_1b79c:                               ; preds = %dec_label_pc_1b788
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1b7c1

dec_label_pc_1b7b2:                               ; preds = %dec_label_pc_1b788
  call void @printLine(ptr @global_var_68f68)
  br label %dec_label_pc_1b7c1

dec_label_pc_1b7c1:                               ; preds = %dec_label_pc_1b7b2, %dec_label_pc_1b79c, %dec_label_pc_1b777
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

