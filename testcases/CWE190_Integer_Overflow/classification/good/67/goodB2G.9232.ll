@global_var_6b028 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_28734:
  call void @anon0(i64 4294967295)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_287d6:
  %0 = trunc i64 %myStruct to i32
  %sext = mul i64 %myStruct, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = icmp slt i32 %0, -65534
  %3 = trunc i64 %1 to i32
  %4 = icmp sgt i32 %3, 65534
  %or.cond = or i1 %2, %4
  br i1 %or.cond, label %dec_label_pc_28814, label %dec_label_pc_287ff

dec_label_pc_287ff:                               ; preds = %dec_label_pc_287d6
  %5 = mul nsw i64 %1, %1
  %6 = trunc i64 %5 to i32
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_28824

dec_label_pc_28814:                               ; preds = %dec_label_pc_287d6
  call void @printLine(ptr @global_var_6b028)
  br label %dec_label_pc_28824

dec_label_pc_28824:                               ; preds = %dec_label_pc_28814, %dec_label_pc_287ff
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

