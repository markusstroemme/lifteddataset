@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_19796:
  call void @anon0(i64 2)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_19881:
  %sext = mul i64 %myStruct, 4294967296
  %0 = ashr exact i64 %sext, 32
  %1 = mul nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

