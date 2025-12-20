@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2cc5f:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = xor i32 %5, 255
  %storemerge.v = select i1 %2, i32 %6, i32 %5
  %7 = urem i32 %storemerge.v, 256
  %8 = zext i32 %7 to i64
  %9 = mul nuw nsw i64 %8, %8
  %10 = trunc i64 %9 to i8
  call void @printHexCharLine(i8 %10)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

