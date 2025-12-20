@CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_68518 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_684f6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1654b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_684f6)
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G2Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_165b8, label %dec_label_pc_165b3

dec_label_pc_165b3:                               ; preds = %dec_label_pc_1654b
  call void @__stack_chk_fail()
  br label %dec_label_pc_165b8

dec_label_pc_165b8:                               ; preds = %dec_label_pc_165b3, %dec_label_pc_1654b
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_166a7:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_fscanf_multiply_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_166f2, label %dec_label_pc_166c6

dec_label_pc_166c6:                               ; preds = %dec_label_pc_166a7
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_166cf, label %dec_label_pc_166e3

dec_label_pc_166cf:                               ; preds = %dec_label_pc_166c6
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_166f2

dec_label_pc_166e3:                               ; preds = %dec_label_pc_166c6
  call void @printLine(ptr @global_var_68518)
  br label %dec_label_pc_166f2

dec_label_pc_166f2:                               ; preds = %dec_label_pc_166e3, %dec_label_pc_166cf, %dec_label_pc_166a7
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

