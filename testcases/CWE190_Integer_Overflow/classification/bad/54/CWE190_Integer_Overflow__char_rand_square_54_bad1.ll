@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3074b:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  call void @anon1(i8 %storemerge)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_3082a:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_30887:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_308e4:
  call void @anon4(i8 %data)
  ret void
}

define void @anon4(i8 %data) local_unnamed_addr {
dec_label_pc_30941:
  %0 = mul i8 %data, %data
  call void @printHexCharLine(i8 %0)
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

