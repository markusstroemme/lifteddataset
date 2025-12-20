@CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_6ac70 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_26e2a:
  store i32 1, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G2Global, align 4
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_26f4a:
  %0 = load i32, ptr @CWE190_Integer_Overflow__unsigned_int_max_square_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26f9c, label %dec_label_pc_26f63

dec_label_pc_26f63:                               ; preds = %dec_label_pc_26f4a
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_26f8d, label %dec_label_pc_26f77

dec_label_pc_26f77:                               ; preds = %dec_label_pc_26f63
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_26f9c

dec_label_pc_26f8d:                               ; preds = %dec_label_pc_26f63
  call void @printLine(ptr @global_var_6ac70)
  br label %dec_label_pc_26f9c

dec_label_pc_26f9c:                               ; preds = %dec_label_pc_26f8d, %dec_label_pc_26f77, %dec_label_pc_26f4a
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

