@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_34943:
  call void @anon1(i64 32767)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_349ec:
  %0 = urem i64 %myStruct, 65536
  %1 = mul nuw nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  %sext = mul i32 %2, 65536
  %3 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %3)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

