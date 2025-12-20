@badStatic = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_35d1d:
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_35d49, label %dec_label_pc_35d36

dec_label_pc_35d36:                               ; preds = %dec_label_pc_35d1d
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_35d49

dec_label_pc_35d49:                               ; preds = %dec_label_pc_35d36, %dec_label_pc_35d1d
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_35d4c:
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
  store i32 1, ptr @badStatic, align 4
  call void @anon1(i32 %storemerge.in)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

