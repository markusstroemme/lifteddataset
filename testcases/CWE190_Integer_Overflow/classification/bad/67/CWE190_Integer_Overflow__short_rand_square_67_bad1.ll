@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e60c:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = urem i32 %storemerge.in, 65536
  %10 = zext i32 %9 to i64
  call void @anon1(i64 %10)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_e733:
  %0 = urem i64 %myStruct, 65536
  %1 = mul nuw nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  %sext = mul i32 %2, 65536
  %3 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %3)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

