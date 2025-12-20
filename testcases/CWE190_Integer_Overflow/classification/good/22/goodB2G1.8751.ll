@CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_6ac58 = external constant [21 x i8]
@global_var_6ac70 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_26df9:
  store i32 0, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G1Global, align 4
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_26ee4:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26f0e, label %dec_label_pc_26efd

dec_label_pc_26efd:                               ; preds = %dec_label_pc_26ee4
  call void @printLine(ptr @global_var_6ac58)
  br label %dec_label_pc_26f47

dec_label_pc_26f0e:                               ; preds = %dec_label_pc_26ee4
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_26f38, label %dec_label_pc_26f22

dec_label_pc_26f22:                               ; preds = %dec_label_pc_26f0e
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_26f47

dec_label_pc_26f38:                               ; preds = %dec_label_pc_26f0e
  call void @printLine(ptr @global_var_6ac70)
  br label %dec_label_pc_26f47

dec_label_pc_26f47:                               ; preds = %dec_label_pc_26f38, %dec_label_pc_26f22, %dec_label_pc_26efd
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

