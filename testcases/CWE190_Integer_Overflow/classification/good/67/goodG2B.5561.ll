@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1d5e9:
  call void @anon0(i64 2)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1d6cb:
  %sext = mul i64 %myStruct, 4294967296
  %0 = ashr exact i64 %sext, 32
  %1 = mul nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  call void @printUnsignedLine(i32 %2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

