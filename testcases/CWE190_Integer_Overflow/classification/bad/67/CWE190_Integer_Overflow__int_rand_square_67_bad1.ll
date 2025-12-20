@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_19722:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %storemerge = zext i32 %storemerge.in to i64
  call void @anon1(i64 %storemerge)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_19856:
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

declare i32 @rand() local_unnamed_addr

