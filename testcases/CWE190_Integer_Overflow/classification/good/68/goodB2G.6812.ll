@CWE190_Integer_Overflow__unsigned_int_max_add_68_goodB2GData = external local_unnamed_addr global i32
@global_var_69d60 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_210c4:
  store i32 -1, ptr @CWE190_Integer_Overflow__unsigned_int_max_add_68_goodB2GData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_21169:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_add_68_goodB2GData, align 4
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_21199, label %dec_label_pc_21184

dec_label_pc_21184:                               ; preds = %dec_label_pc_21169
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_211a8

dec_label_pc_21199:                               ; preds = %dec_label_pc_21169
  call void @printLine(ptr @global_var_69d60)
  br label %dec_label_pc_211a8

dec_label_pc_211a8:                               ; preds = %dec_label_pc_21199, %dec_label_pc_21184
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

declare i32 @puts(ptr) local_unnamed_addr

